# string calculator class to add digits in string
class StringCalculator
  attr_reader :str

  def initialize(str)
    @str = str.strip
  end

  def add
    return 0 if string.empty?

    check_for_negatives

    digits.sum
  end

  private

  def check_for_negatives
    raise "Negatives not allowed #{negatives.join(', ')}" if negatives.size.positive?
  end

  def negatives
    digits.select(&:negative?)
  end

  def digits
    string.gsub('\n', delimiter).split(delimiter).map(&:to_i).select { |num| num <= 1000 }
  end

  def delimiter
    @delimiter ||= str[0..1] == '//' ? str[2] : ','
  end

  def string
    @string ||= str[0..1] == '//' ? str[3..] : str
  end
end
