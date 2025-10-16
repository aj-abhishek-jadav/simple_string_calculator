class SimpleStringCalculator
  def add(numbers: '')
    return 0 if (numbers.nil? || numbers.empty?)

    numbers.split(',').map(&:to_i).sum
  end
end