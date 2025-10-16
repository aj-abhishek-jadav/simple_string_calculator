require 'minitest/autorun'
require './simple_string_calculator'

class SimpleStringCalculatorTest < Minitest::Test
  def test_empty_string_returning_zero
    calculator = SimpleStringCalculator.new
    assert_equal 0, calculator.add(numbers: '')
  end

  def test_nil_input_returning_zero
    calculator = SimpleStringCalculator.new
    assert_equal 0, calculator.add(numbers: nil)
  end

  def test_calling_add_without_argumnets_to_return_zero
    calculator = SimpleStringCalculator.new
    assert_equal 0, calculator.add
  end

  def test_single_number_should_return_same
    calculator = SimpleStringCalculator.new
    input_string = '5'
    assert_equal 5, calculator.add(numbers: input_string)
  end
end