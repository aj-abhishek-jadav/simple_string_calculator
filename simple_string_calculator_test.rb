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

  def test_single_number_should_return_itself
    calculator = SimpleStringCalculator.new
    input_string = '5'
    assert_equal 5, calculator.add(numbers: input_string)
  end

  def test_multiple_numbers_separated_by_comma_should_add_and_return
    calculator = SimpleStringCalculator.new
    input_string = '5, 15, 30'
    assert_equal 50, calculator.add(numbers: input_string)
  end

  def test_input_string_containing_nil_should_add_and_return
    calculator = SimpleStringCalculator.new
    input_string = '5, 15, nil, 30'
    assert_equal 50, calculator.add(numbers: input_string)
  end

  def test_input_string_containing_different_delimeter
    calculator = SimpleStringCalculator.new
    input_string = '5\n15 \n 30\n50'
    assert_equal 100, calculator.add(numbers: input_string)
  end

  def test_input_string_containing_two_delimeters
    calculator = SimpleStringCalculator.new
    input_string = '5\n15,30\n50, 100'
    assert_equal 200, calculator.add(numbers: input_string)
  end

  def test_custom_delimeter_semicolon_to_return_sum
    calculator = SimpleStringCalculator.new
    input_string = "//;\n1;2"
    assert_equal 3, calculator.add(numbers: input_string)
  end

  def test_custom_delimete_colon_to_return_sum
    calculator = SimpleStringCalculator.new
    input_string = "//:\n50:3"
    assert_equal 53, calculator.add(numbers: input_string)
  end

  def test_custom_delimeter_double_colon_to_return_sum
    calculator = SimpleStringCalculator.new
    input_string = "//_\n10_3_23"
    assert_equal 36, calculator.add(numbers: input_string)
  end
end