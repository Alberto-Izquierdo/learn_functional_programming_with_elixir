upcase = fn string -> String.upcase(string) end
IO.puts upcase.("Hello world")
upcase = &String.upcase/1
IO.puts upcase.("Hello world")

# We can also use the & operator to create anonymous functions
total_cost = &(&1 + &2)
IO.puts total_cost.(10, 2)
total_cost = & &1 + &2
IO.puts total_cost.(13, 2)
