#Sweet! We can extend Ruby's built-in Integer class
class Integer
  def to_roman
    result = ""
    #TODO use regular expressions to force it to split into a 1x4 array
    digits = self.to_s.split ''
    #Raise error if more than 4 digits!
    result += hundreds(self/100)
    result += tens(self/10)
    result += ones(self%10)
  end

  def hundreds(arg)
    result = ""
    result += "C" * arg
    result
  end

  def tens(arg)
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
