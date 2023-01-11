defmodule Database.Application do

  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      Database.Repo
    ]

    opts = [
      strategy: :one_for_one,
      name:     Database.Supervisor
    ]

    Supervisor.start_link(children, opts)
  end
end
