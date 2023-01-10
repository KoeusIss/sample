defmodule Accounts.Projections.User do
  use Ecto.Schema

  @primary_key {:uuid, :binary_id, autogenerate: false}
  @timestamps_opts [type: :utc_datetime_usec]

  schema "users" do
    field(:email, :string)
    field(:hashed_password, :string)

    timestamps()
  end
end
