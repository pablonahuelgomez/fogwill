defmodule Fogwill.MixProject do
  use Mix.Project

  def project do
    [
      app: :fogwill,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Fogwill.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:benchee, ">= 1.0.0"},
      {:phoenix_pubsub, "~> 2.0.0"}
    ]
  end
end
