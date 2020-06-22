defmodule Fogwill do
  alias Fogwill.Algorithms.Recursive
  alias Fogwill.Algorithms.Concurrent

  def mind(xs, subscribers \\ [])
  def mind([], _), do: [[]]

  def mind(xs, subscribers) do
    length(xs) |> execute(xs, subscribers)
  end

  defp execute(length, _, _) when length > 10, do: {:error, "Length can't be higher than 10"}

  defp execute(length, xs, subscribers) when length <= 10 do
    result =
      if length > 4 do
        Concurrent.mind(xs, subscribers)
      else
        Recursive.mind(xs, subscribers) |> Enum.map(&to_string/1)
      end

    {:ok, result, Enum.count(result)}
  end
end
