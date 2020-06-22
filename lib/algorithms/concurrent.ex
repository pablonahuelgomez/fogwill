defmodule Fogwill.Algorithms.Concurrent do
  alias Fogwill.Algorithms.Recursive

  def mind(xs, subscribers \\ [])

  def mind([], _), do: [[]]

  def mind(xs, subscribers) do
    xs
    |> Enum.map(&[&1])
    |> Enum.map(fn c ->
      Task.async(fn ->
        (xs -- c)
        |> Recursive.mind(subscribers)
        |> Enum.map(&to_string(c ++ &1))
      end)
    end)
    # This will finish.
    |> Enum.map(&Task.await(&1, :infinity))
    |> List.flatten()
  end
end
