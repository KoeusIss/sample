defmodule Database.Table do
  @moduledoc """
  Database tables
  """
  use Ecto.Schema

  schema "users" do
    # field :nickname, :string
    # field :email,    :string
    # field :password, :string
    timestamps()
  end

end
