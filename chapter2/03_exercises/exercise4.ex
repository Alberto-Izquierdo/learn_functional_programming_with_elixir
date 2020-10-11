defmodule MatchstickFactory do
  @matchsticks_per_big_box 50
  @matchsticks_per_medium_box 20
  @matchsticks_per_small_box 5

  def boxes(matchsticks_number) do
    big_boxes = div(matchsticks_number, @matchsticks_per_big_box)
    remaining = rem(matchsticks_number, @matchsticks_per_big_box)
    medium_boxes = div(remaining, @matchsticks_per_medium_box)
    remaining = rem(remaining, @matchsticks_per_medium_box)
    small_boxes = div(remaining, @matchsticks_per_small_box)
    remaining = rem(remaining, @matchsticks_per_small_box)
    %{:Big => big_boxes, :Medium => medium_boxes, :Small => small_boxes, :Remaining => remaining}
  end
end
