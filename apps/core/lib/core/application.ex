defmodule Core.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Core.App,
      Accounts.Supervisor
    ]

    opts = [
      strategy: :one_for_one,
      name: Core.Supervisor
    ]

    Supervisor.start_link(children, opts)
  end
end
