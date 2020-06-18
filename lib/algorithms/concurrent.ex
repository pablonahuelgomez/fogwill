defmodule Fogwill.Algorithms.Concurrent do
  alias Fogwill.Algorithms.Recursive

  def mind([]), do: [[]]

  def mind(xs) do
    xs
    |> Enum.map(&[&1])
    |> Enum.map(fn c ->
      Task.async(fn ->
        rest = xs -- c
        Recursive.mind(rest) |> Enum.map(&to_string(c ++ &1))
      end)
    end)
    # We're sure this will finish.
    |> Enum.map(&Task.await(&1, :infinity))
    |> List.flatten()
  end
end
