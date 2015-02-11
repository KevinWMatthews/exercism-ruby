#Sweet! We can extend Ruby's built-in Integer class
class Integer
  def to_roman
    result = ""
    result += tens(self/10)
    result += ones(self%10)
  end

  def tens(arg)
    result = ""
    if (arg >= 5)
      result += "L"
    end
    result += "X" * (arg % 5)
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
    result.gsub!(/VIIII/, "IX")
    result.gsub!(/IIII/, "IV")
    result
  end
end
