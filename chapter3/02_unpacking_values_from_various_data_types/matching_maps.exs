abilities = %{strength: 16, dexterity: 12, intelligence: 10}
%{strength: strength_value} = abilities
IO.puts strength_value
# %{wisdom: wisdom_value} = abilities (MatchError) :wisdom does not exist in the map

# These will match the whole map
%{} = abilities
%{} = %{"a" => 1, "b" => 2}

%{dexterity: 12, intelligence: intelligence_value} = abilities
IO.puts intelligence_value

_value = [a: 1, a: 2]
# [a: a_value] = _value (MatchError)
