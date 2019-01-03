defmodule StochasticGeometryWeb.Api.CelluloseController do
  @moduledoc false

  use StochasticGeometryWeb, :controller

  action_fallback(StochasticGeometryWeb.FallbackController)

  def index(conn, %{"side" => side}) do
    conn |> render("index.json", %{dimensions: %{width: side, height: side}})
  end

  def index(conn, %{"width" => width, "height" => height} = _params) do
    conn |> render("index.json", %{dimensions: %{width: width, height: height}})
  end
end
