import Config

config :core, event_stores: [Core.EventStore]

import_config "#{Mix.env()}.exs"
