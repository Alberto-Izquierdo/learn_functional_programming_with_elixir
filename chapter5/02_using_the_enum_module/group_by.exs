defmodule GroupBy do
  @medals [
    %{medal: :gold, player: "Anna"},
    %{medal: :silver, player: "Joe"},
    %{medal: :gold, player: "Zoe"},
    %{medal: :bronze, player: "Anna"},
    %{medal: :silver, player: "Anderson"},
    %{medal: :silver, player: "Peter"}
  ]
  @value Enum.group_by(@medals, &(&1.medal), &(&1.player))
  IO.inspect @value
end

