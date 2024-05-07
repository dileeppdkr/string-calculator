class StringCalculator

  def add(numbers_string)
    return  0 if numbers_string.empty?
    numbers = numbers_string.split(',').map(&:to_i)
    return numbers.reduce(:+)
  end
end