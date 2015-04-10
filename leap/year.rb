class Year
  def self.leap?(year)
    return false if (year % 100 == 0)
    return true if (year % 4 == 0) else return false
  end
end
