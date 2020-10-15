defmodule MyList do
  def map([], _function), do: []
  def map([head | tail], function) do
    [function.(head) | map(tail, function)]
  end
  def each([], _function), do: nil
  def each([head | tail], function) do
    function.(head)
    each(tail, function)
  end
  def reduce([], acc, _function), do: acc
  def reduce([head | tail], acc, function) do
    reduce(tail, function.(head, acc), function)
  end
  def filter([], _function), do: []
  def filter([head | tail], function) do
    if function.(head) do
      [head | filter(tail, function)]
    else
      filter(tail, function)
    end
  end
end

enchanted_items = [
  %{title: "Longsword", price: 50, magic: false},
  %{title: "Healing Potion", price: 60, magic: true},
  %{title: "Rope", price: 10, magic: false},
  %{title: "Dragon's Spear", price: 100, magic: true},
]

# Each
MyList.each(enchanted_items, fn item -> IO.puts item.title end)

items = ["dogs", "cats", "flowers"]

MyList.each(items, fn item -> IO.puts String.capitalize(item) end)
MyList.each(items, fn item -> IO.puts String.upcase(item) end)
MyList.each(items, fn item -> IO.puts String.length(item) end)

# Map
increase_price = fn i -> %{title: i.title, price: i.price * 1.1} end
modified_list = MyList.map(enchanted_items, increase_price)
MyList.each(modified_list, fn item -> IO.puts item.title <> ": #{item.price}" end)
increase_price = fn item -> update_in(item.price, &(&1 * 1.1)) end
modified_list = MyList.map(enchanted_items, increase_price)
MyList.each(modified_list, fn item -> IO.puts item.title <> ": #{item.price}" end)

modified_list = MyList.map(items, &String.capitalize/1)
MyList.each(modified_list, fn item -> IO.puts item end)
modified_list = MyList.map(items, &String.upcase/1)
MyList.each(modified_list, fn item -> IO.puts item end)
modified_list = MyList.map(items, &String.length/1)
MyList.each(modified_list, fn item -> IO.puts item end)

# Reduce
sum_price = fn item, acc -> item.price + acc end
total_price = MyList.reduce(enchanted_items, 0, sum_price)
IO.puts total_price
total = MyList.reduce([1, 2, 3, 4], 0, &+/2)
IO.puts total
max = MyList.reduce([100, 20, 300, 40], 0, &max/2)
IO.puts max

# Filter
is_cheap = fn item -> item.price < 70 end
cheap_items = MyList.filter(enchanted_items, is_cheap)
MyList.each(cheap_items, fn item -> IO.puts item.title <> ": #{item.price}" end)
