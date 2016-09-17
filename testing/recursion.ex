defmodule MyList do
  def count(list) do
    do_count(list, 0)
  end

  defp do_count([], acc) do
    acc
  end

  defp do_count([_|t], acc) do
    do_count(t, acc + 1)
  end

  def each(list, fun) do
    do_each(list, fun)
  end

  defp do_each([], _fun) do
    :ok
  end

  defp do_each([h|t], fun) do
    fun.(h)
    each(t, fun)
  end

  def map(list, fun) do
    do_map(list, fun, [])
  end

  defp do_map([], _fun, acc) do
    :lists.reverse(acc)
  end

  defp do_map([h|t], fun, acc) do
    result = fun.(h)
    do_map(t, fun, [result | acc])
  end
end

MyList.count([1,2,3])
|> IO.puts

MyList.each([1,2,3], &IO.puts/1)

test = MyList.map [1,2,3], &(&1 * 2)
test |> IO.inspect
