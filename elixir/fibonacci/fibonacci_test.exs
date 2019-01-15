if !System.get_env("EXERCISM_TEST_EXAMPLES") do
  Code.load_file("fibonacci.exs", __DIR__)
end

ExUnit.start()

defmodule FibonacciTest do
  use ExUnit.Case

  test "fibonacci for 0" do
    assert Fibonacci.fibonacci(0) == 0
  end

  test "fibonacci for 1" do
    assert Fibonacci.fibonacci(1) == 1
  end

  test "fibonacci for 2" do
    assert Fibonacci.fibonacci(2) == 1
  end

  test "fibonacci for 10" do
    assert Fibonacci.fibonacci(10) == 55
  end

end
