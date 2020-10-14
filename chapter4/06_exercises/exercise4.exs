defmodule Sum do
  def up_to(value), do: up_to_internal(value, 0)
  defp up_to_internal(0, sum), do: sum
  defp up_to_internal(n, sum), do: up_to_internal(n - 1, sum + n)
end

defmodule Math do
  def sum(list), do: sum_internal(list, 0)
  def sum_internal([], sum), do: sum
  def sum_internal([head | tail], sum), do: sum_internal(tail, sum + head)
end

defmodule Sort do
  def descending([]), do: []
  def descending([a]), do: [a]
  def descending(list) do
    half_size = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, half_size)
    merge(
      descending(list_a),
      descending(list_b)
    )
  end
  defp merge(list_a, list_b), do: merge_internal(list_a, list_b, [])
  defp merge_internal(list_a, [], result), do: Enum.concat(result, list_a)
  defp merge_internal([], list_b, result), do: Enum.concat(result, list_b)
  defp merge_internal([head_a | tail_a], list_b = [head_b | _], result) when head_a > head_b do
    merge_internal(tail_a, list_b, Enum.concat(result, [head_a]))
  end
  defp merge_internal(list_a = [head_a | _], [head_b | tail_b], result) when head_a <= head_b do
    merge_internal(list_a, tail_b, Enum.concat(result, [head_b]))
  end
end
