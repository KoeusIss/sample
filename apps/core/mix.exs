defmodule Core.MixProject do
  use Mix.Project

  @name    :core
  @version "0.1.0"

  @deps [
    {:jason, "~> 1.2"},
    {:commanded, "~> 1.4"},
    {:eventstore, "~> 1.4"},
    {:exconstructor, "~> 1.2"},
    {:commanded_eventstore_adapter, "~> 1.4"},
    {:commanded_ecto_projections, "~> 1.3"},
    {:bcrypt_elixir, "~> 3.0"},
    {:uuid, "~> 1.1" },
    {:vex, "~> 0.9"},
    {:database, in_umbrella: true}
  ]

  @aliases [
    setup: ["deps.get"]
  ]

  # ------------------------------------------------------------

  def project do
    in_production = Mix.env == :prod
    [
      app: @name,
      version: @version,
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.14",
      start_permanent: in_production,
      deps: @deps,
      aliases: @aliases
    ]
  end

  def application do
    [
      mod: {Core.Application, []},
      extra_applications: [:logger]
    ]
  end
end
