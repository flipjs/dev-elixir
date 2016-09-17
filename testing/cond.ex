x = 10
cond do
  x == 1 -> "This will never happen"
  x == 9 -> "Nor this"
  x == 4 -> "Not this too"
  x == 10 -> "This will" |> IO.puts
  true -> "None of the above"
end
