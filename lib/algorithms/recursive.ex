defmodule Fogwill.Algorithms.Recursive do
  def mind(xs, ss \\ [])
  def mind([], _), do: [[]]

  def mind(xs, ss) do
    for h <- xs,
        t <- mind(xs -- [h]),
        subs = ss,
        do: helper([h | t], subs)
  end

  defp helper(xs, []), do: xs

  defp helper(xs, ss) do
    ss |> Enum.each(fn {from, s} -> s.receive(xs, from) end)
    xs
  end
end
