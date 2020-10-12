calculate_points = fn map ->
  %{strength: strength_value} = map
  %{dexterity: dexterity_value} = map
  %{intelligence: intelligence_value} = map
  strength_value * 2 + (dexterity_value + intelligence_value) * 3
end

map = %{strength: 10, dexterity: 20, intelligence: 30}
IO.puts calculate_points.(map)
