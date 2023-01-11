defmodule Api.MixProject do
  use Mix.Project

  @name :api
  @version "0.1.0"

  @deps [
    {:phoenix, "~> 1.6.15"},
    {:telemetry_metrics, "~> 0.6"},
    {:telemetry_poller, "~> 1.0"},
    {:jason, "~> 1.2"},
    {:plug_cowboy, "~> 2.5"},
    {:core, in_umbrella: true},
    {:sobelow, "~> 0.8", only: :dev}
  ]

  @aliases [
    setup: ["deps.get"]
  ]

  # ------------------------------------------------------------

  def project do
    in_production = Mix.env() == :prod

    [
      app: @name,
      version: @version,
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.12",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: Mix.compilers(),
      start_permanent: in_production,
      aliases: @aliases,
      deps: @deps
    ]
  end

  def application do
    [
      mod: {Api.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]
end
