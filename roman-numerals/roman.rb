#Sweet! We can extend Ruby's built-in Integer class
class Integer
  def to_roman
    result = "I" * (self % 5)
    result.gsub!(/IIII/, "IV")
    result
  end
end
