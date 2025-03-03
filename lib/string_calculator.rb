# string calculator class to add digits in string
class StringCalculator
  def self.add(string)
    return 0 if string.strip.empty?

    digits = string.split(',').map(&:to_i)
    return digits[0] if digits.length == 1

    digits[0] + digits[1]
  end
end
