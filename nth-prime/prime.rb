class Prime
  def self.nth(num)
    i=1
    match = 0
    begin
      i += 1
      if (i % (i-1) == 0)
        match += 1
      end
    end while (match < num)
    i
  end
end
