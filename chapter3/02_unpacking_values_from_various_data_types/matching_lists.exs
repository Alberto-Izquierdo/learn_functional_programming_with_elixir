[a, a, a] = [1, 1, 1]
IO.puts a

# [a, a, a] = [1, 2, 1] (MatchError) It must contain the same element three times

[a, b, a] = [1, 2, 1]
IO.puts a
IO.puts b


[a, a, a] = ["apples", "apples", "apples"]
IO.puts a

[_, a, _] = [10, 2, 3]
IO.puts a

[_, a, a] = [12, 4, 4]
IO.puts a

[head | tail] = ["a", "b", "c", "d"]
IO.puts head
IO.puts tail

[head | tail] = ["a"]
IO.puts head
IO.puts tail

# [head | tail] = [] (MatchError)

[a, b | rest] = ["a", "b", "c", "d"]
IO.puts a
IO.puts b
IO.puts rest
