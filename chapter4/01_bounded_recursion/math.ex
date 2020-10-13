defmodule Math do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)
end

IO.puts Math.sum([15, 5, 15])
