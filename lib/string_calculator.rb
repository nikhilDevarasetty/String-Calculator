# string calculator class to add digits in string
class StringCalculator
  def self.add(string)
    return 0 if string.strip.empty?

    string.to_i
  end
end
