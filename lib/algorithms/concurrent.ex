defmodule Fogwill.Algorithms.Concurrent do
  alias Fogwill.Algorithms.Recursive

  def mind([]), do: [[]]

  def mind(xs) do
    xs
    |> Enum.map(&[&1])
    |> Enum.map(fn c ->
      Task.async(fn ->
        rest = xs -- c
        Recursive.mind(rest) |> Enum.map(&(c ++ &1))
      end)
    end)
    |> Enum.flat_map(&Task.await/1)
  end
end
