class StringCalculator

  def add(numbers_string)
    return  0 if numbers_string.empty?
    # get delimiter
    # check the delimiters and return the final array elements
    numbers_array = multi_delimiter_check(numbers_string)
    # verify if any negative numbers
    negative_numbers = numbers_array.select { |num| num.to_i.negative? }
    # raise RuntimeError in case of negative numbers
    if negative_numbers.any?
      raise RuntimeError, "Negative numbers not allowed: #{negative_numbers.join(',')}"
    end
    
    numbers = numbers_array.map(&:to_i)
    # ignores numbers bigger than 1000
    numbers = ignore_numbers_above_1000 numbers
   return  numbers.sum
  end

private

  def multi_delimiter_check numbers_string
    delimiter = /[\n,]/ # Default delimiter
    numbers = numbers_string.split(delimiter)
    # check for any custom delimiter
    if  numbers.first.include?('//')
      # get the delimiter
      delimiter = numbers.first.delete('//[]')
      # delete the delimiters and craete number array
      numbers = numbers.last.delete(delimiter).split('')
    end
   
    numbers
  end

  def ignore_numbers_above_1000 numbers
    numbers.map! { |num| num >= 1000 ? 0 : num }
  end

end