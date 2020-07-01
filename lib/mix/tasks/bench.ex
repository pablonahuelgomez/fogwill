defmodule Mix.Tasks.Bench do
  use Mix.Task

  alias Fogwill.Algorithms.Concurrent
  alias Fogwill.Algorithms.Recursive

  @shortdoc "Benchmarks algorithms"
  def run(_) do
    Benchee.run(
      %{
        "Concurrent" => &Concurrent.mind(&1, false),
        "Recursive" => &Recursive.mind(&1)
      },
      inputs: %{
        "Aira" => 'Aira',
        "Borges" => 'Borges',
        "Levrero" => 'Levrero',
        "Benesdra" => 'Benesdra'
      },
      time: 2
    )
  end
end
