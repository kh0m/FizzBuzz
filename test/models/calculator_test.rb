require 'test_helper'

class CalculatorTest < ActiveSupport::TestCase
  test "can calculate fizz" do
    calculator = Calculator.new
    result = calculator.calculate_fizz_buzz(3)
    assert_equal(result, "Fizz")
  end

  test "can calculate buzz" do
    calculator = Calculator.new
    result = calculator.calculate_fizz_buzz(5)
    assert_equal(result, "Buzz")
  end

  test "can calculate fizz_buzz" do
    calculator = Calculator.new
    result = calculator.calculate_fizz_buzz(15)
    assert_equal(result, "FizzBuzz")
  end

  test "can handle negative numbers" do
    calculator = Calculator.new
    result = calculator.calculate_fizz_buzz(-3)
    assert_equal(result, "Fizz")
  end
end
