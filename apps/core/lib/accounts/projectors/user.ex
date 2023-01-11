defmodule Accounts.Projectors.User do
  @moduledoc """
  Account projecto user
  """
  use Commanded.Projections.Ecto,
    application: Core.App,
    repo: Database.Repo,
    name: to_string(__MODULE__)

  alias Accounts.Events.UserRegistered
  alias Accounts.Projections.User

  project(%UserRegistered{} = registered_user, fn multi ->
    Ecto.Multi.insert(
      multi,
      :users,
      %User{
        uuid: registered_user.uuid,
        email: registered_user.email,
        hashed_password: registered_user.hashed_password
      }
    )
  end)
end
