defmodule Cognito.MixProject do
  use Mix.Project

  @name :cognito
  @version "0.1.0"

  @deps [
    {:aws, "~> 0.13.0"},
    {:hackney, "~> 1.18"},
    {:jason, "~> 1.2"},
    {:exconstructor, "~> 1.2"}
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
      elixir: "~> 1.14",
      start_permanent: in_production,
      deps: @deps
    ]
  end

  def application do
    [
      mod: {Cognito.Application, []},
      extra_applications: [:logger]
    ]
  end
end
