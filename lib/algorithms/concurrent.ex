defmodule Fogwill.Algorithms.Concurrent do
  alias Fogwill.Algorithms.Recursive

  def mind([]), do: [[]]

  def mind(xs) do
    xs
    |> Enum.map(&[&1])
    |> Enum.map(fn c ->
      Task.async(fn ->
        result =
          (xs -- c)
          |> Recursive.mind()
          |> Enum.map(&to_string(c ++ &1))

        result |> Enum.each(fn word ->
          Phoenix.PubSub.broadcast(Fogwill.PubSub, "words", {:word, %{word: word}})
        end)

        result
      end)
    end)
    # This will finish.
    |> Enum.map(&Task.await(&1, :infinity))
    |> List.flatten()
  end
end
