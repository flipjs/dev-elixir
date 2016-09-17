defmodule Test do
  def test_match(tup) do
    case tup do
      {:ok, test} -> IO.puts test
      {:good, test} -> IO.puts test <> " world!"
      _other -> IO.puts "invalid args"
    end
  end
end

Test.test_match({:ok, "hello"})
Test.test_match({:good, "hello"})
Test.test_match({:error, "hello"})
