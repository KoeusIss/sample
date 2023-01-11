use Mix.Config

config :database, Database.Repo,
  adapter:   Ecto.Adapters.Postgres,
  database: "sample_prod",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
