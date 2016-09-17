test = %{
  name: "foo",
  age: %{
    fizz: "buzz"
  }
}

test
|> IO.inspect

test.name
|> IO.inspect

test.age
|> IO.inspect

test.age.fizz
|> IO.inspect

{a, _} = {1, 2}
{_, a} = {1, 2}

a
|> IO.inspect
