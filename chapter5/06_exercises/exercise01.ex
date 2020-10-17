defmodule EnchanterShop do
  @enchanter_name "Edwin"

  def enchant_for_sale(items) do
    items
    |> Enum.map(&enchant_item/1)
  end
  defp enchant_item(item = %{magic: true}) do
    item
  end
  defp enchant_item(item = %{magic: false}) do
    item
    |> Map.replace!(:magic, true)
    |> Map.update!(:price, &(&1 * 3))
    |> Map.update!(:title, &("#{@enchanter_name}'s #{&1}"))
  end
end

test_data =
[
  %{title: "Longsword", price: 50, magic: false},
  %{title: "Healing Potion", price: 60, magic: true},
  %{title: "Rope", price: 10, magic: false},
  %{title: "Dragon's Spear", price: 100, magic: true},
]

enchanted_data = EnchanterShop.enchant_for_sale(test_data)
IO.inspect enchanted_data
