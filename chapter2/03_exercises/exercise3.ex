apply_tax = fn original_price ->
  tax_value = original_price * 0.12
  final_price = original_price + tax_value
  IO.puts "# Price: #{final_price} - Tax: #{tax_value}"
end

Enum.each [12.5, 30.99, 250.49, 18.80], apply_tax
