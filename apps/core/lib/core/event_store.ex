defmodule Core.EventStore do
  @moduledoc """
  Eventstore
  """
  use EventStore, otp_app: :core

  def init(config) do
    {:ok, config}
  end
end
