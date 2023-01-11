defmodule Sample.MixProject do
  use Mix.Project

  @version "0.1.0"

  @deps [
    {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
    {:credo, "~> 1.6", only: [:dev, :test], runtime: false},
    {:excoveralls, "~> 0.10", only: :test, runtime: false}
  ]

  # ------------------------------------------------------------

  def project do
    in_prodcution = Mix.env() == :prod

    [
      apps_path: "apps",
      version: @version,
      start_permanent: in_prodcution,
      deps: @deps,
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      dialyzer: [
        plt_file: {:no_warn, ".dialyzer/plts/dialyzer.plt"},
        ignore_warnings: ".dialyzer_ignore.exs"
      ]
    ]
  end
end
