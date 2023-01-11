use Mix.Config

config :database, Database.Repo,
  adapter:   Ecto.Adapters.Postgres,
  database: "sample_test",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
