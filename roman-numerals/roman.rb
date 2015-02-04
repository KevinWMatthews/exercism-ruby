#Sweet! We can extend Ruby's built-in Integer class
class Integer
  def to_roman
    remainder = self % 4
    "I"*remainder
  end
end
