defmodule ScrewsFactory do
  def run(pieces) do
    pieces
    |> Stream.map(&add_thread/1)
    |> Stream.map(&add_head/1)
    |> Enum.each(&output/1)
  end
  defp add_thread(piece) do
    Process.sleep(50)
    piece <> "--"
  end
  defp add_head(piece) do
    Process.sleep(100)
    "o" <> piece
  end
  defp output(screw) do
    IO.inspect screw
  end
  def run_improved(pieces) do
    pieces
    |> Stream.chunk_every(50)
    |> Stream.flat_map(&add_thread_improved/1)
    |> Stream.chunk_every(100)
    |> Stream.flat_map(&add_head_improved/1)
    |> Enum.each(&output/1)
  end
  defp add_thread_improved(pieces) do
    Process.sleep(50)
    Enum.map(pieces, &(&1 <> "--"))
  end
  defp add_head_improved(pieces) do
    Process.sleep(100)
    Enum.map(pieces, &("o" <> &1))
  end
end

# metal_pieces = Enum.take(Stream.cycle(["-"]), 100)
# ScrewsFactory.run(metal_pieces)
metal_pieces = Enum.take(Stream.cycle(["-"]), 1000)
ScrewsFactory.run_improved(metal_pieces)
