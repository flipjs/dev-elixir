test = fn(val) ->
  ans = cond do
    val == "a" -> "foo"
    val == "b" -> "bar"
    true -> "hello world"
  end

  ans = case ans do
    "foo" ->
      String.capitalize(ans)
    "bar" -> String.capitalize(ans)
    other ->
      String.capitalize(other)
      "BAHHHH"
  end
  {:ok, ans}
end

test.("d")
|> IO.inspect
