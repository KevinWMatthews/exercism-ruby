class Year
  def self.leap?(year)
    return true if (year % 4 == 0) else return false
  end
end
