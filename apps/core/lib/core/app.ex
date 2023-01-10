defmodule Core.App do
  use Commanded.Application,
    otp_app: :core,
    event_store: [
      adapter: Commanded.EventStore.Adapters.EventStore,
      event_store: Core.EventStore
    ]

  def init(config) do
    {:ok, config}
  end

  router Core.Router
end
