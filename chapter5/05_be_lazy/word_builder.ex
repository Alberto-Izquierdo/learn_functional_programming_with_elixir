defmodule WordBuilder do
  def build(alphabet, positions) do
    # partial application
    partial = fn at -> String.at(alphabet, at) end
    letters = Enum.map(positions, partial)
    Enum.join(letters)
  end
  def build2(alphabet, positions) do
    letters = Enum.map(positions, &(String.at(alphabet, &1)))
    Enum.join(letters)
  end
  def build3(alphabet, positions) do
    # partial application
    positions
    |> Enum.map(fn at -> String.at(alphabet, at) end)
    |> Enum.join
  end
end

IO.inspect WordBuilder.build("world", [4, 1, 1, 2])
IO.inspect WordBuilder.build2("world", [4, 1, 1, 2])
IO.inspect WordBuilder.build3("world", [4, 1, 1, 2])
