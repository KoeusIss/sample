import Config

config :database, Database.Repo,
  adapter:   Ecto.Adapters.Postgres,
  database: "sample_dev",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
