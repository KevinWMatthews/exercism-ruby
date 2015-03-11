class Prime
  def self.nth(num)
    i=2
    while (i % (i-1) != 0)
      i += 1
    end
    i
  end
end
