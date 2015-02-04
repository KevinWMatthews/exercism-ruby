#Sweet! We can extend Ruby's built-in Integer class
class Integer
  def to_roman
    if (self == 1)
      "I"*1
    elsif (self == 2)
      "I"*2
    elsif (self == 3)
      "I"*3
    elsif (self == 4)
      "IV"
    elsif (self == 5)
      "V"
    elsif (self == 6)
      "VI"
    elsif (self == 9)
      "IX"
    end
  end
end
