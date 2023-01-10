defmodule Core.Router do
  use Commanded.Commands.Router

  alias Accounts.Aggregates.User
  alias Accounts.Commands.{
    RegisterUser
  }

  dispatch(
    [RegisterUser], to: User, identity: :uuid
  )
end
