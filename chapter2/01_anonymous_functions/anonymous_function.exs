hello = fn name -> "Hello, " <> name <> "!" end
IO.puts hello.("Ana")
IO.puts hello.("John")
IO.puts hello.("World")

# #{} = string interpolation syntax
hello = fn name -> "Hello, #{name}!" end
IO.puts hello.("Ana")
IO.puts hello.("John")
IO.puts hello.("World")

greet = fn name ->
    greetings = "Hello, #{name}"
    "#{greetings}! Enjoy your stay"
end
IO.puts greet.("Ana")
IO.puts greet.("John")
IO.puts greet.("World")

one_plus_one = fn -> 1 + 1 end
IO.puts one_plus_one.()

total_price = fn price, quantity -> price * quantity end
IO.puts total_price.(5, 6)

total_price = fn price, fee -> price + fee.(price) end
flat_fee = fn _price -> 5 end
proportional_fee = fn price -> price * 0.12 end
IO.puts total_price.(1000, flat_fee)
IO.puts total_price.(1000, proportional_fee)

message = "Hello, World!"
say_hello = fn -> Process.sleep(500); IO.puts(message) end
spawn(say_hello)
Process.sleep(800)

product_price = 200
quantity = 2
# This anonymous function will take the product_price value and store it, the quantity value is shadowed by its parameter
calculate = fn quantity -> product_price * quantity end
IO.puts calculate.(4)
product_price = 500
quantity = 5
# Even if we change the product_price value, the result will not change
IO.puts calculate.(4)

number = 5
# Notice we cannot change the value of "number" inside the anonymous function
calculate = fn -> number = number + 10 end
calculate.()
IO.puts number
