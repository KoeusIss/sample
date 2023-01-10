defmodule Accounts.Queries.UserByUuid do
  import Ecto.Query

  alias Accounts.Projections.User

  def new(uuid) do
    from(u in User, where: u.uuid == ^uuid)
  end
end
