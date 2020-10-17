IO.inspect for a <- ["dogs", "cats", "flowers"], do: String.upcase(a)

IO.inspect for a <- ["Willy", "Anna"], b <- ["Math", "English"], do: {a, b}
parseds = for i <- ["10", "hot dogs", "20"], do: Integer.parse(i)
IO.inspect parseds
IO.inspect for {n, _} <- parseds, do: n

IO.inspect for n <- [1, 2, 3, 4, 5, 6, 7, 8, 9], n > 3, do: n
# Same as
IO.inspect Enum.filter([1, 2, 3, 4, 5, 6, 7, 8, 9], fn item -> item > 3 end)

