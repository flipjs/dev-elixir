defmodule Foo do
  def bar(hello, world) when is_binary(hello) do
    "#{hello} #{world}"
  end
  def bar _other do
    "nah"
  end
end

Foo.bar("hello", "world")
|> IO.inspect
