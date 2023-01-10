defmodule Core.EventStore do
  use EventStore, otp_app: :core

  def init(config) do
    {:ok, config}
  end
end
