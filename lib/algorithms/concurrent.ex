defmodule Fogwill.Algorithms.Concurrent do
  alias Fogwill.Algorithms.Recursive

  def mind(xs, subscribers \\ [])

  def mind([], _), do: [[]]

  def mind(xs, subscribers) do
    xs
    |> Enum.map(&[&1])
    |> Enum.map(fn c ->
      Task.async(fn ->
        result =
          (xs -- c)
          |> Recursive.mind([])
          |> Enum.map(&to_string(c ++ &1))

        subscribers
        |> Enum.each(fn {from, s} ->
          Enum.each(result, &s.receive(&1, from))
        end)

        result
      end)
    end)
    # This will finish.
    |> Enum.map(&Task.await(&1, :infinity))
    |> List.flatten()
  end
end
