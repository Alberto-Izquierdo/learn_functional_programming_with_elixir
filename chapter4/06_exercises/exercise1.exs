defmodule MyList do
  def max([value]), do: value
  def max([head | tail]) do
    max(head, MyList.max(tail))
  end
  def min([value]), do: value
  def min([head | tail]) do
    min(head, MyList.min(tail))
  end
end

IO.puts MyList.max([4, 2, 16, 9, 10])
IO.puts MyList.min([4, 2, 16, 9, 10])
