class SimpleStringCalculator
  def add(numbers: '')
    return 0 if (numbers.nil? || numbers.empty?)

    delimeter = /[,|\\n]/
    if numbers.start_with?('//')
      input_array = numbers.split("\n", 2)
      delimeter = input_array[0][-1]
      numbers = input_array[1]
    end
    numbers.split(delimeter).map(&:to_i).sum
  end
end