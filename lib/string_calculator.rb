# string calculator class to add digits in string
class StringCalculator
  attr_reader :str

  def initialize(str)
    @str = str.strip
  end

  def add
    return 0 if str.empty?

    digits.sum
  end

  def digits
    str.split(',').map(&:to_i)
  end
end
