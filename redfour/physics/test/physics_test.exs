defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  test "escape velocity of earth is correct" do
    ev = Physics.Rocketry.escape_velocity(:earth) |> IO.inspect
    assert ev == 11.2 #what should this value be?
  end

  test "escape velocity of planet X is correct" do
    planet_x = %{mass: 4.0e22, radius: 6.21e6}
    ev =  planet_x |> Physics.Rocketry.escape_velocity |> IO.inspect
    assert ev == 1.0 #what should this value be?
  end

end
