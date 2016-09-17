defmodule MyList do

  def reduce(list, func, value \\ 0)

  def reduce([], _func, value), do: value

  def reduce([ head | tail ], func, value) do
    reduce(tail, func, func.(value, head))
  end

end

IO.puts MyList.reduce([1,2,3,4], &(&1 * &2), 1)
