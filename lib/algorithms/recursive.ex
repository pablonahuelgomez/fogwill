defmodule Fogwill.Algorithms.Recursive do
  def mind([]), do: [[]]

  def mind(xs) do
    for h <- xs, t <- mind(xs -- [h]), do: [h | t]
  end
end
