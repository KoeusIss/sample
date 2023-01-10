defmodule Accounts.Aggregates.User do
  defstruct [
    :uuid,
    :email,
    :hashed_password
  ]

  alias __MODULE__

  alias Accounts.Commands.{
    RegisterUser
  }

  alias Accounts.Events.{
    UserRegistered
  }

  def execute(%User{uuid: nil}, %RegisterUser{} = command) do
    %UserRegistered{
      uuid: command.uuid,
      email: command.email,
      hashed_password: command.hashed_password
    }
  end

  def apply(%User{} = user, %UserRegistered{} = event) do
    %User{
      user
      | uuid: event.uuid,
        email: event.email,
        hashed_password: event.hashed_password
    }
  end
end
