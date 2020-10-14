defmodule GeneralStore do
  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing Potion", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true},
    ]
  end

  def filter_items([], _), do: []
  def filter_items([item = %{magic: magical} | incoming_items], magic: magical) do
    [item | filter_items(incoming_items, magic: magical)]
  end
  def filter_items([_ | incoming_items], magic: magical) do
    filter_items(incoming_items, magic: magical)
  end
end
