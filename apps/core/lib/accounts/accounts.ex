defmodule Accounts do
  @moduledoc """
  Account context interface
  """
  alias Accounts.Commands.RegisterUser
  alias Core.App

  def register_user(attrs \\ %{}) do
    uuid = UUID.uuid4()

    register_user =
      attrs
      |> RegisterUser.new()
      |> RegisterUser.hash_password()
      |> RegisterUser.downcase_email()
      |> RegisterUser.set_uuid(uuid)

    App.dispatch(register_user, consistency: :strong)
  end
end
