# Fogwill

Permuta lo dado. Dado `"argentino"`, retorna una linda lista con todas las permutaciones posibles de aquella palabra.

```elixir
  xs = Fogwill.mind("argentino")
  
  ##### xs, entre otros resultados.
  [
    ...
    'ignoanter',
    'ignoraetn',
    'ignoraent',
    'ignoraten',
    'ignoratne',
    'ignoranet',
    'ignorante',
    'ignoreatn',
    'ignoreant',
    'ignoretan',
    'ignoretna',
    'ignorenat',
    'ignorenta',
    'ignortaen',
    ...
  ]
```

Y asi distintos algoritmos realizan el computo. El que te toca te toca. Lo decide el destino.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `fogwill` to your list of dependencies in `mix.exs`:

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

