date = ~D[2018-01-01]
%{year: year} = date
IO.puts year

%Date{day: day} = date
IO.puts day
# %Date{day: day} = %{day: 1} (MatchError) %{day: 1} is not a Date struct
