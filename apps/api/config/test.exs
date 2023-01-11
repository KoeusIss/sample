import Config

config :api, ApiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "hMjBaZtdOYS0+yEnKQ1O1q1gMvciYXNS320yPoPxgLUA0oDnQcGl5ylVE4+w2J9P",
  server: false

config :logger, level: :warn

config :phoenix, :plug_init_mode, :runtime
