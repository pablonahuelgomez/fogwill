# Fogwill

[Permuta](https://en.wikipedia.org/wiki/Permutation) lo dado. Dado un [Bitstring](https://elixir-lang.org/getting-started/binaries-strings-and-char-lists.html#bitstrings), como `'argentino'`, retorna una linda lista con todas las [permutaciones](https://en.wikipedia.org/wiki/Permutation) posibles de aquella palabra. 

## Examples

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

```elixir
fogwill ‹master› » iex -S mix
Erlang/OTP 22 [erts-10.4.4] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe] [dtrace]

Interactive Elixir (1.9.1) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)>
nil
iex(2)>
nil
iex(3)> escribir = fn ws ->
...(3)>   ws
...(3)>   |> Enum.map(fn w ->
...(3)>        {:ok, words, _} = Fogwill.mind(w)
...(3)>        words |> Enum.random()
...(3)>      end)
...(3)> end
#Function<7.91303403/1 in :erl_eval.expr/5>
iex(4)> ['hola', 'mundo'] |> escribir.()
["loha", "mndou"]
```

Y asi distintos algoritmos realizan el computo. El que te toca te toca. Lo decide el destino (en realidad lo decide el length de tu input).

## Installation

The package can be installed by adding `fogwill` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:fogwill, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/fogwill](https://hexdocs.pm/fogwill).

