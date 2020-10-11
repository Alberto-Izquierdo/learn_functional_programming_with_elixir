total_cost = fn bread_quantity, milk_quantity, cake_quantity ->
  bread_quantity * 0.10 + milk_quantity * 2 + cake_quantity * 15
end

IO.puts "Total cost is:"
IO.puts total_cost.(10, 3, 1)
