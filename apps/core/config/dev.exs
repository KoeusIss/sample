import Config

config :core, Core.EventStore,
  serializer: Commanded.Serialization.JsonSerializer,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "sample_eventstore_dev",
  stacktrace: true,
  pool_size: 10
