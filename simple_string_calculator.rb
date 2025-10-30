class SimpleStringCalculator
  def add(numbers: nil)
    return 0 if (numbers.nil? || numbers.empty?)

    delimeter = /[,|\n]/
    if numbers.start_with?('//')
      input_array = numbers.split("\n", 2)
      delimeter = input_array.first[-1]
      numbers = input_array.last
    end

    numbers = numbers.split(delimeter).map(&:to_i)
    negative_numbers = numbers.select { |number| number < 0 }

    raise RuntimeError, "negatives not allowed: #{ negative_numbers.join(', ') }" unless negative_numbers.empty?

    numbers.sum
  end
end