defmodule MyList do
  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]
end

list = MyList.map [1,2,3,4], &(&1 * &1)
IO.puts IO.inspect list
