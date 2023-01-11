defmodule ApiWeb.UserController do
  use ApiWeb, :controller

  def create(conn, params) do
    with :ok <- Core.register_user(params) do
      conn
      |> put_status(:created)
      |> json(%{"created" => "ok"})
    end
  end
end
