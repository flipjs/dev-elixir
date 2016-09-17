defmodule MyList do

  def maxi(list), do: maxi(list, 0)
  def maxi([], num), do: num
  def maxi([ head | tail ], num) when num < head do
    maxi(tail, head)
  end
  def maxi([ head | tail ], num) when num > head do
    maxi(tail, num)
  end

end

IO.puts MyList.maxi([5,2,6,4,7,18,10,3,22,100,99])
