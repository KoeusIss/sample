defmodule Api.Application do
  @moduledoc """
  Api application
  """
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ApiWeb.Telemetry,
      {Phoenix.PubSub, name: Api.PubSub},
      ApiWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: Api.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @impl true
  def config_change(changed, _new, removed) do
    ApiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
