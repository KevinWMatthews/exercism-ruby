#Sweet! We can extend Ruby's built-in Integer class
class Integer
  def to_roman
    result = ""

    digits = self.to_s.chars.map(&:to_i)
    result += convert(digits[1], "X", "L", "C")
    result += convert(digits[0], "I", "V", "X")
    # result += convert(digits[0], "I", "V", "X")
  end

  def convert(digit, smallRoman, midRoman, largeRoman)
    if digit.nil?; return "" end
    result = ""
    if (digit >= 5)
      result += midRoman
    end
    result += smallRoman * (digit % 5)
    result.gsub!(/#{"#{smallRoman}"}*4/, "#{smallRoman}#{midRoman}")
    result.gsub!(/#{"#{midRoman}#{smallRoman}#{midRoman}"}/, "#{smallRoman}#{largeRoman}")
    result
  end

  def hundreds(arg)
    if arg.nil?; return "" end
    result = ""
    result += "C" * arg
    result
  end

  #rename arg to digit
  def tens(arg)
    if arg.nil?; return "" end
    result = ""
    if (arg >= 5)
      result += "L"
    end
    result += "X" * (arg % 5)
    result.gsub!(/LXXXX/, "XC")
    result.gsub!(/XXXX/, "XL")
    result
  end

  def ones(arg)
    if arg.nil?; return "" end
    result = ""
    if (arg >= 5)
      result += "V"
    end
    result += "I" * (arg % 5)
    #May be able to streamline this with more regex options
    result.gsub!(/IIII/, "IV")
    result.gsub!(/VIV/, "IX")
    result
  end
end
