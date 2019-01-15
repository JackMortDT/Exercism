defmodule Fibonacci do

  def fibonacci(0), do: 0
  def fibonacci(1), do: 1
  def fibonacci(number), do: fibonacci(number - 1) + fibonacci(number - 2)

end
