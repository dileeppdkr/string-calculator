class StringCalculator

  def add(numbers_string)
    return  0 if numbers_string.empty?
    numbers = numbers_string.split(/[\n,]/)
    numbers = numbers.map(&:to_i)
    return numbers.reduce(:+)
  end

end

# c = StringCalculator.new

# p c.add('1\n2,3')