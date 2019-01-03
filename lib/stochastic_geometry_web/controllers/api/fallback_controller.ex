defmodule StochasticGeometryWeb.FallbackController do
  @moduledoc false

  use StochasticGeometryWeb, :controller

  alias StochasticGeometryWeb.ErrorView

  require Logger

  def call(conn, {:error, :bad_request}) do
    Logger.error("FallbackController::Bad Request")
    conn
    |> put_status(:unauthorized)
    |> render(ErrorView, :"400")
  end

  def call(conn, {:error, :unauthorized}) do
    Logger.error("FallbackController::Unauthorized Error")
    conn
    |> put_status(:unauthorized)
    |> render(ErrorView, :"401")
  end

  def call(conn, {:error, :not_found}) do
    Logger.error("FallbackController::Not Found")
    conn
    |> put_status(:not_found)
    |> render(ErrorView, :"404")
  end

  def call(conn, {:error, detail}) when is_binary(detail) do
    Logger.error("FallbackController::Unprocessable Entity: #{inspect(detail)}")
    conn
    |> put_status(:unprocessable_entity)
    |> assign(:detail, detail)
    |> render(ErrorView, :"422")
  end

  def call(conn, {:error, :not_implemented}) do
    Logger.error("FallbackController::Not Implemented Error")
    conn
    |> put_status(:not_implemented)
    |> render(ErrorView, :"501")
  end
end
