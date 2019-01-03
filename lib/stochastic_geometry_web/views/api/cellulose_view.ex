defmodule StochasticGeometryWeb.Api.CelluloseView do
  @moduledoc false
  use StochasticGeometryWeb, :view

  def render("index.json", %{dimensions: dimensions}) do
    %{data: dimensions}
  end
end
