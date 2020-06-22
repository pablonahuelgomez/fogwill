defmodule Fogwill.Algorithms.Recursive do
  def mind(xs, ss \\ [])
  def mind([], _), do: [[]]

  def mind(xs, ss) do
    for h <- xs,
        t <- mind(xs -- [h]),
        subs = ss,
        do: helper([h | t], subs)
  end

  defp helper(xs, ss) do
    ss |> Enum.each(fn s -> s.receive(xs) end)
    xs
  end
end
