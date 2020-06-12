defmodule Fogwill do
  alias Fogwill.Algorithms.Recursive
  alias Fogwill.Algorithms.Concurrent

  @algorithms [
    &Recursive.mind/1,
    &Concurrent.mind/1
  ]

  def mind([]), do: [[]]

  def mind(xs) do
    Enum.random(@algorithms).(xs)
  end
end
