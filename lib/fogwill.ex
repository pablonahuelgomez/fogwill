defmodule Fogwill do
  alias Fogwill.Algorithms.Recursive
  alias Fogwill.Algorithms.Concurrent

  def mind([]), do: [[]]

  def mind(xs) do
    length(xs) |> execute(xs)
  end

  defp execute(length, _) when length > 10, do: {:error, "Length can't be higher than 10"}

  defp execute(length, xs) when length <= 10 do
    result = Concurrent.mind(xs)

    {:ok, result, Enum.count(result)}
  end
end
