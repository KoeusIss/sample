defmodule Database.Mixfile do
  use Mix.Project

  @name    :database
  @version "0.1.0"

  @deps [
    { :postgrex, ">= 0.0.0" },
    { :ecto,     ">= 0.0.0" },
    {:ecto_sql, "~> 3.6"},
  ]

  @aliases [
    setup: ["deps.get", "ecto.setup"],
    "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
    "ecto.reset": ["ecto.drop", "ecto.setup"],
    test: ["ecto.create --quiet", "ecto.migrate --quiet", "test"]
  ]

  # ------------------------------------------------------------

  def project do
    in_production = Mix.env == :prod
    [
      app:     @name,
      version: @version,
      elixir:  ">= 1.14.2",
      deps:    @deps,
      aliases: @aliases,
      build_embedded:  in_production,

    ]
  end

  def application do
    [
      mod: { Database.Application, [] },         # Entry point module and parameters
      extra_applications: [         # built-in apps that need starting
        :logger
      ],
    ]
  end

end
