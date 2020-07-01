defmodule Fogwill.Algorithms.Concurrent do
  alias Fogwill.Algorithms.Recursive
  alias Fogwill.Broadcaster

  def mind(xs, cast \\ true)

  def mind([], _cast), do: [[]]

  def mind(xs, cast) do
    xs
    |> Enum.map(&[&1])
    |> Enum.map(fn c ->
      Task.async(fn ->
        (xs -- c)
        |> Recursive.mind()
        |> Enum.map(&to_string(c ++ &1))
        |> Broadcaster.broadcast(cast)
      end)
    end)
    # This will finish.
    |> Enum.map(&Task.await(&1, :infinity))
    |> List.flatten()
  end
end
