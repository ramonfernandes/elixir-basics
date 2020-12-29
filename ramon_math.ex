defmodule RamonMath do
  @moduledoc "Implements a series o simple Mathematical operations to study Elixir operators"

  @doc "Implements a simple delta calculation to Baskara"
  @spec calc_delta(number, number, number) :: number
  def calc_delta(a, b, c) do
    b * b - 4 * a * c
  end

  @doc "Pipeline to calculate baskara given the values"
  @spec baskara(number, number, number) :: {number, number}
  def baskara(a,b,c) do
    calc_delta(a,b,c)
    |> abs
    |> :math.sqrt() 
    |> getBaskaraPoints(b)
    |> divideByTwoPlusA(a)
  end

  @spec getBaskaraPoints(number, number) :: {number, number}
  def getBaskaraPoints(value, b) do
    {(b*-1)+value, (b*-1)-value}
  end

  defp divideByTwoPlusA(tuple, a) do
     {Kernel.elem(tuple, 0) / 2 * a, Kernel.elem(tuple, 1) / 2 * a}
  end
end
