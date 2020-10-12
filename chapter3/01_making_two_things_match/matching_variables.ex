IO.puts x = 1

# When the variable is in the right side, Elixir will match everything and will bind the value to the variable
IO.puts x = 2

IO.puts 2 = x
# IO.puts 1 = x (MatchError)

# Pin operator allows us to match the content of the variable, instead of binding the value from the right
IO.puts ^x = 2
# IO.puts ^x = 1 (MatchError)
