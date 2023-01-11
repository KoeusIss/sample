defmodule Cognito.Client do
  @moduledoc """
  Cognito client agent
  """
  use Agent

  def start_link(_) do
    case Application.fetch_env!(:cognito, :client_credentials) do
      %{access_key_id: access, secret_access_key: secret, region: region} ->
        Agent.start_link(
          fn ->
            AWS.Client.create(access, secret, region)
          end,
          name: __MODULE__
        )

      _ ->
        {:ok, :wrong_credentials}
    end
  end

  def get() do
    Agent.get(__MODULE__, fn client -> client end)
  end
end
