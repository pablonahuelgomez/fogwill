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

## Benchmark
```
Operating System: macOS
CPU Information: Intel(R) Core(TM) i7-6700HQ CPU @ 2.60GHz
Number of Available Cores: 8
Available memory: 16 GB
Elixir 1.10.4
Erlang 23.0.2

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 2 s
memory time: 0 ns
parallel: 1
inputs: Aira, Benesdra, Borges, Gomez, Levrero
Estimated total run time: 40 s

Benchmarking Concurrent with input Aira...
Benchmarking Concurrent with input Benesdra...
Benchmarking Concurrent with input Borges...
Benchmarking Concurrent with input Gomez...
Benchmarking Concurrent with input Levrero...
Benchmarking Recursive with input Aira...
Benchmarking Recursive with input Benesdra...
Benchmarking Recursive with input Borges...
Benchmarking Recursive with input Gomez...
Benchmarking Recursive with input Levrero...

##### With input Aira #####
Name                 ips        average  deviation         median         99th %
Recursive        61.01 K       16.39 μs    ±58.42%          15 μs          43 μs
Concurrent       18.23 K       54.84 μs    ±18.62%          53 μs          98 μs

Comparison: 
Recursive        61.01 K
Concurrent       18.23 K - 3.35x slower +38.45 μs

##### With input Benesdra #####
Name                 ips        average  deviation         median         99th %
Concurrent         45.84       21.81 ms     ±6.92%       21.63 ms       27.09 ms
Recursive          20.10       49.74 ms    ±11.15%       49.08 ms       62.18 ms

Comparison: 
Concurrent         45.84
Recursive          20.10 - 2.28x slower +27.93 ms

##### With input Borges #####
Name                 ips        average  deviation         median         99th %
Recursive         1.49 K      672.93 μs    ±13.06%         638 μs      988.50 μs
Concurrent        1.44 K      692.71 μs     ±9.51%         675 μs      947.68 μs

Comparison: 
Recursive         1.49 K
Concurrent        1.44 K - 1.03x slower +19.77 μs

##### With input Gomez #####
Name                 ips        average  deviation         median         99th %
Recursive        10.90 K       91.75 μs    ±17.67%          87 μs         163 μs
Concurrent        5.14 K      194.47 μs    ±17.97%         201 μs         304 μs

Comparison: 
Recursive        10.90 K
Concurrent        5.14 K - 2.12x slower +102.72 μs

##### With input Levrero #####
Name                 ips        average  deviation         median         99th %
Concurrent        308.26        3.24 ms     ±8.16%        3.20 ms        4.19 ms
Recursive         196.91        5.08 ms    ±22.17%        5.00 ms        6.24 ms

Comparison: 
Concurrent        308.26
Recursive         196.91 - 1.57x slower +1.83 ms
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
