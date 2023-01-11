defmodule Cognito do
  @moduledoc """
  Coognito module interface
  """
  alias Cognito.Commands.RegisterUser

  def register(attrs \\ %{}) do
    attrs
    |> RegisterUser.new()
    |> RegisterUser.register()
  end
end
