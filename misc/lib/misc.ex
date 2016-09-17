defmodule Misc do

  @moduledoc """
    This is module documentation
  """

  @doc """
    This multiplies two values
    Examples:
      iex> Misc.multiply(3, 4)
      12
  """

  def multiply(x, y) do
    x * y
  end

  def sum(list) do
    _sum(list, 0)
  end

  defp _sum([], total) do
    total
  end

  defp _sum([head | tail], total) do
    _sum(tail, head + total)
  end

end
