defmodule Converter do
  defp to_nearest_tenth(val) do
    Float.ceil val, 1
  end

  defp to_km(val) do
    val / 1000
  end
end

defmodule Physics.Rocketry do
  def escape_velocity(planet) when is_map(planet) do
    planet
    |> calculate_escape
    |> Converter.to_km
    |> Converter.to_nearest_tenth
  end

  defp calculate_escape(%{mass: mass, radius: radius}) do
    newtons_constant = 6.67e-11
    2 * newtons_constant * mass / radius
    |> :math.sqrt
  end
end
