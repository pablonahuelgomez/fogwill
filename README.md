# Fogwill

[Permuta](https://en.wikipedia.org/wiki/Permutation) lo dado. Dado un [Bitstring](https://elixir-lang.org/getting-started/binaries-strings-and-char-lists.html#bitstrings), como `'argentino'`, retorna una linda lista con todas las [permutaciones](https://en.wikipedia.org/wiki/Permutation) posibles de aquella palabra. 

```elixir
iex(1)> {:ok, xs, count} = Fogwill.mind 'argentino'
{:ok,
 ["argentino", "argention", "argentnio", "argentnoi", "argentoin", "argentoni",
  "argenitno", "argeniton", "argeninto", "argeninot", "argeniotn", "argeniont",
  "argenntio", "argenntoi", "argennito", "argenniot", "argennoti", "argennoit",
  "argenotin", "argenotni", "argenoitn", "argenoint", "argenonti", "argenonit",
  "argetnino", "argetnion", "argetnnio", "argetnnoi", "argetnoin", "argetnoni",
  "argetinno", "argetinon", "argetinno", "argetinon", "argetionn", "argetionn",
  "argetnino", "argetnion", "argetnnio", "argetnnoi", "argetnoin", "argetnoni",
  "argetonin", "argetonni", "argetoinn", "argetoinn", "argetonin", "argetonni",
  ...], 362880}
iex(2)> count
362880
iex(3)> Enum.random(xs)
"ignorante"
```

Y asi distintos algoritmos realizan el computo. El que te toca te toca. Lo decide el destino.

## Installation

The package can be installed by adding `fogwill` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:fogwill, "~> 10.6.2020"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/fogwill](https://hexdocs.pm/fogwill).

