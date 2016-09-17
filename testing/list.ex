cook = fn (heat, food) -> Keyword.values(food) |> Enum.map(&(heat <> &1)) end

IO.inspect cook.(
  "Fried",
  meat: "sausage",
  veg: "beans"
)
