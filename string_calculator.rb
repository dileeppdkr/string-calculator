class StringCalculator

  def add(numbers_string)
    return  0 if numbers_string.empty?
    # get delimiter
    delimiter = get_delimiter(numbers_string)
    p "****delimiter***#{delimiter}"
    # remove the delimiter prefix
    numbers_without_delimiter = remove_delimiter_prefix(numbers_string)
    p "****numbers_without_delimiter***#{numbers_without_delimiter}"
    # Split the string using delimiter
    numbers_array = numbers_without_delimiter.split(delimiter)
    # verify if any negative numbers
    negative_numbers = numbers_array.select { |num| num.to_i.negative? }
    # raise RuntimeError in case of negative numbers
    if negative_numbers.any?
      raise RuntimeError, "Negative numbers not allowed: #{negative_numbers.join(',')}"
    end
    # return sum
   return  numbers_array.map(&:to_i).sum
  end

private

  def get_delimiter(numbers)
    delimiter = /[\n,]/ # Default delimiter
    if numbers.start_with?("//")
      delimiter_match = numbers.match(/\[(.*?)\]/) #/\[([^\]]+)\]/
      delimiter = Regexp.new(Regexp.escape(delimiter_match[1])) if delimiter_match
    end
    delimiter
  end

  def remove_delimiter_prefix(numbers)
    numbers.gsub!(/^\/\/.*?\n/, '')
    numbers
  end

end

# c = StringCalculator.new

# p c.add('1\n2,3')
# p c.add('//[;]\n1;2')