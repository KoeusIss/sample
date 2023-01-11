defmodule Core do
  @moduledoc """
  Documentation for `Core`.
  """

  defdelegate register_user(params), to: Accounts
end
