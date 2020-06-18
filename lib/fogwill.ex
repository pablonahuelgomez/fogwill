defmodule Fogwill do
  alias Fogwill.Algorithms.Recursive
  alias Fogwill.Algorithms.Concurrent

  def mind([]), do: [[]]

  def mind(xs) do
    length(xs) |> execute(xs)
  end

  defp execute(length, _) when length > 10, do: {:error, "Length can't be higher than 10"}

  defp execute(length, xs) when length <= 10 do
    result =
      if length(xs) > 4 do
        Concurrent.mind(xs)
      else
        Recursive.mind(xs) |> Enum.map(&to_string/1)
      end

    {:ok, result, Enum.count(result)}
  end
end
