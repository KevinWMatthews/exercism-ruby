#Sweet! We can extend Ruby's built-in Integer class
class Integer
  def to_roman
    result = ""

    tens = self / 10
    result += "X" * (tens % 10)

    ones = self % 10
    if (ones == 1)
     result += "I"*1
    elsif (ones == 2)
     result += "I"*2
    elsif (ones == 3)
     result += "I"*3
    elsif (ones == 4)
     result += "IV"
    elsif (ones == 5)
     result += "V"
    elsif (ones == 6)
     result += "VI"
    elsif (ones == 7)
      result += "VII"
    elsif (ones == 9)
     result += "IX"
    end
    result
  end
end
