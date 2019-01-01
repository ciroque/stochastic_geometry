defmodule StochasticGeometryWeb.Router do
  use StochasticGeometryWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", StochasticGeometryWeb do
    pipe_through :api
  end
end
