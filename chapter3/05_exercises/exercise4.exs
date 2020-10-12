defmodule Tax do
  def process_input(input) do
    case Integer.parse input do
      :error -> "Input no valid: #{input}"
      {salary, _} ->
        taxes = calculate(salary)
        net_wage = salary - taxes
        "Salary: #{salary}\nIncome tax: #{taxes}\nNet wage: #{net_wage}"
    end
  end
  defp calculate(salary) when salary <= 2000 do
    0
  end
  defp calculate(salary) when salary <= 3000 do
    salary * 0.05
  end
  defp calculate(salary) when salary <= 6000 do
    salary * 0.1
  end
  defp calculate(salary) do
    salary * 0.15
  end
end

input = IO.gets "Introduce your salary\n"
IO.puts Tax.process_input(input)
