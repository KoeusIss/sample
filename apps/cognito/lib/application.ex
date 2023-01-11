defmodule Cognito.Application do
  @moduledoc """
  Cognito application
  """
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Cognito.Supervisor
    ]

    opts = [
      strategy: :one_for_one
    ]

    Supervisor.start_link(children, opts)
  end
end
