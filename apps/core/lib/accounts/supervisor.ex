defmodule Accounts.Supervisor do
  @moduledoc """
  Account supervisor
  """
  use Supervisor

  def start_link(args) do
    Supervisor.start_link(__MODULE__, args, name: __MODULE__)
  end

  def init(_) do
    Supervisor.init(
      [
        Accounts.Projectors.User
      ],
      strategy: :one_for_one
    )
  end
end
