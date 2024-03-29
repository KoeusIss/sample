defmodule Cognito.Supervisor do
  @moduledoc """
  Cognito supervisor
  """
  use Supervisor

  def start_link(args) do
    Supervisor.start_link(__MODULE__, args, name: __MODULE__)
  end

  def init(_) do
    Supervisor.init(
      [
        Cognito.Client
      ],
      strategy: :one_for_one
    )
  end
end
