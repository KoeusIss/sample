defmodule Accounts do
  alias Accounts.Commands.RegisterUser
  alias Accounts.Queries.UserByUuid
  alias Core.App
  alias Database.Repo

  def register_user(attrs \\ %{}) do
    uuid = UUID.uuid4()

    register_user =
      attrs
      |> RegisterUser.new()
      |> RegisterUser.hash_password()
      |> RegisterUser.downcase_email()
      |> RegisterUser.set_uuid(uuid)

      with :ok <- App.dispatch(register_user, consistency: :strong) do
        :ok
      end
  end
end
