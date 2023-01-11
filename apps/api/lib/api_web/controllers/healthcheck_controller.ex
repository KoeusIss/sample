defmodule ApiWeb.HealthcheckController do
  use ApiWeb, :controller

  def status(conn, _params) do
    conn
    |> put_status(:ok)
    |> json(%{status: "ok"})
  end
end
