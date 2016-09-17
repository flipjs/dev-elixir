people = [
  %{ name: "Grumpy", height: 1.24 },
  %{ name: "Dave", height: 1.88 },
  %{ name: "Dopey", height: 1.32 },
  %{ name: "Shaquille", height: 2.16 },
  %{ name: "Sneezy", height: 1.28 }
]

for person = %{ height: h } <- people,
  h > 1.5,
  do: IO.inspect person

IO.puts "-----------------------"

for person <- people,
  person[:height] > 1.5,
  do: IO.inspect person
