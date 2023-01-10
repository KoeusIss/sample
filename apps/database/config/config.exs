import Config

config :database, ecto_repos: [Database.Repo]


import_config "#{Mix.env}.exs"
