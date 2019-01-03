defmodule StochasticGeometry.Point do
  @moduledoc false

  @type t :: %__MODULE__{
    x: Int,
    y: Int
  }

  defstruct [
    x: 0,
    y: 0
  ]
end
