defmodule TicTacToe do
  def winner(board) do
    check(board)
  end
  defp check({a, a, a,
              _, _, _,
              _, _, _}) do
    {:winner, a }
  end
  defp check({_, _, _,
              a, a, a,
              _, _, _}) do
    {:winner, a }
  end
  defp check({_, _, _,
              _, _, _,
              a, a, a}) do
    {:winner, a }
  end
  defp check({a, _, _,
              a, _, _,
              a, _, _}) do
    {:winner, a }
  end
  defp check({_, a, _,
              _, a, _,
              _, a, _}) do
    {:winner, a }
  end
  defp check({_, _, a,
              _, _, a,
              _, _, a}) do
    {:winner, a }
  end
  defp check({a, _, _,
              _, a, _,
              _, _, a}) do
    {:winner, a }
  end
  defp check({_, _, a,
              _, a, _,
              a, _, _}) do
    {:winner, a }
  end
  defp check(_) do
    {:no_winner }
  end
end
