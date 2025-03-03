# string calculator class to add numbers in string
class StringCalculator
  attr_reader :str

  def initialize(str)
    @str = str.strip
  end

  def add
    return 0 if string.empty?

    check_for_negative_numbers

    numbers.sum
  end

  private

  def check_for_negative_numbers
    raise "Negatives not allowed #{negative_numbers.join(', ')}" if negative_numbers.size.positive?
  end

  def negative_numbers
    numbers.select(&:negative?)
  end

  def numbers
    @numbers ||= string.gsub('\n', delimiter).split(delimiter).map(&:to_i).select { |num| num <= 1000 }
  end

  def delimiter
    @delimiter ||= str[0..1] == '//' ? str[delimiter_start_index..delimiter_end_index] : ','
  end

  def string
    @string ||= str[0..1] == '//' ? str[(delimiter_end_index + 1)..] : str
  end

  def delimiter_start_index
    2
  end

  def delimiter_end_index
    @delimiter_end_index ||= str.index('\n').to_i - 1
  end
end
