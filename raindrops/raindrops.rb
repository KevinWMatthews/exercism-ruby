class Raindrops
  def self.convert(num)
    rainspeak = ""
    if (num % 3 == 0)
      rainspeak = "Pling"
    else
      rainspeak = num.to_s
    end
    rainspeak
  end
end
