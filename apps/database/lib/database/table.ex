defmodule Database.Table do
  use Ecto.Schema

  schema "users" do
    # field :nickname, :string
    # field :email,    :string
    # field :password, :string
    timestamps()
  end

end
