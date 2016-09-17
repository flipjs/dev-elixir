defmodule Test do
  def go({:ok, num} = val) do
    IO.inspect :ok
    IO.inspect num
    IO.inspect val
    "end"
  end

  def foo(%{name: "foo", age: 10} = person) do
   IO.inspect person
  end
end
