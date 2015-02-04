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
    end
  end
end
