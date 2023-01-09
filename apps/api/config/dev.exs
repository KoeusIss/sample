import Config

config :api, ApiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "mLcBZbh0LNrbGd5f7pdZIHXRW26Gc1hlY6642J4GIMjqV/pKTxEkboAvSCsSmzpG",
  watchers: []

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20

config :phoenix, :plug_init_mode, :runtime
