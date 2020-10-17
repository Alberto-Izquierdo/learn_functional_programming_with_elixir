defmodule HigherOrderFunctions do
  def compose(f, g) do
    fn arg -> f.(g.(arg)) end
  end
end

first_letter_and_upcase = HigherOrderFunctions.compose(&String.upcase/1, &String.first/1)
IO.inspect first_letter_and_upcase.("works")
IO.inspect first_letter_and_upcase.("compose")

# pipe
first_letter_and_upcase = &(&1
  |> String.first
  |> String.upcase
)
IO.inspect first_letter_and_upcase.("works")
IO.inspect first_letter_and_upcase.("compose")

IO.inspect "works"
  |> String.first
  |> String.upcase
