defmodule Cognito.Commands.RegisterUser do
  @moduledoc """
  send a new user sign_up request to cognito
  """
  import AWS.CognitoIdentityProvider, only: [sign_up: 2]
  use ExConstructor
  alias __MODULE__
  alias Cognito.Client

  defstruct [
    :client_id,
    :email,
    :password
  ]

  def register(%RegisterUser{} = payload) do
    Client.get() |> sign_up(Map.from_struct(payload))
  end
end
