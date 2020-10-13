# if the last expresion of a function is a function call, the compiler will be able to optimize memory usage
defmodule TRFactorial do
  def of(n), do: factorial_of(n, 1)
  defp factorial_of(0, acc), do: acc
  defp factorial_of(n, acc), do: factorial_of(n - 1, acc * n)
end
