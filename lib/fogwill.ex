defmodule Fogwill do
  alias Fogwill.Algorithms.Recursive

  @algorithms [
    &Recursive.mind/1
  ]

  def mind([]), do: [[]]

  def mind(xs) do
    Enum.random(@algorithms).(xs)
  end
end
