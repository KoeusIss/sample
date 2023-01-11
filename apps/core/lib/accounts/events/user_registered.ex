defmodule Accounts.Events.UserRegistered do
  @moduledoc """
  Register user command
  """
  @derive Jason.Encoder
  defstruct [
    :uuid,
    :email,
    :hashed_password
  ]
end
