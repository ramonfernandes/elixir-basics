defmodule RamonMath do
  @moduledoc "Implements a series o simple Mathematical operations to study Elixir operators"

  @doc "Implements a simple delta calculation to Baskara"
  @spec calc_delta(number, number, number) :: number
  def calc_delta(a, b, c) do
    b * b - 4 * a * c
  end
end
