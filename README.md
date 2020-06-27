![Elixir CI](https://github.com/pablonahuelgomez/fogwill/workflows/Fogwill%20CI/badge.svg?branch=master)


# Fogwill

[Permutes](https://en.wikipedia.org/wiki/Permutation) words. Inspired by Memoria Romana, from Fogwill.

## Examples

```elixir
{:ok, xs, count} = Fogwill.mind 'argentino'
#{:ok,
# ["argentino", "argention", "argentnio", "argentnoi", "argentoin", "argentoni",
#  "argenitno", "argeniton", "argeninto", "argeninot", "argeniotn", "argeniont",
#  "argenntio", "argenntoi", "argennito", "argenniot", "argennoti", "argennoit",
#  "argenotin", "argenotni", "argenoitn", "argenoint", "argenonti", "argenonit",
#  "argetnino", "argetnion", "argetnnio", "argetnnoi", "argetnoin", "argetnoni",
#  "argetinno", "argetinon", "argetinno", "argetinon", "argetionn", "argetionn",
#  "argetnino", "argetnion", "argetnnio", "argetnnoi", "argetnoin", "argetnoni",
#  "argetonin", "argetonni", "argetoinn", "argetoinn", "argetonin", "argetonni",
#  ...], 362880}
Enum.random(xs)
#"ignorante"
escribir_algo = fn ws ->
  ws
  |> Enum.map(fn w ->
       {:ok, words, _} = Fogwill.mind(w)
       words |> Enum.random()
     end)
end
#Function<7.91303403/1 in :erl_eval.expr/5>
['hola', 'mundo'] |> escribir_algo.()
#["loha", "mndou"]
```


## Installation

The package can be installed by adding `fogwill` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:fogwill, "~> 0.1.0"}
  ]
end
```
