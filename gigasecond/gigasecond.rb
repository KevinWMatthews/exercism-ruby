class Gigasecond
  def self.from(date)
    #Add number of days in a gigasecond
    #86400 seconds in a day
    date = date + (10**9)/86400
  end
end
