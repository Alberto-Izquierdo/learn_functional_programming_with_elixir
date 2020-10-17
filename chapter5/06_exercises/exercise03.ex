defmodule Fibonacci do
  def of(number) do
    Stream.unfold({0, 1}, fn
      {n, m} -> {{n, m}, {m, n + m}}
    end)
    |> Enum.take(number)
    |> Enum.map(&(elem(&1, 0)))
  end
end

IO.inspect Fibonacci.of(9)
