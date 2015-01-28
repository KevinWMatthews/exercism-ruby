class Hamming
  def self.compute(strand1, strand2)
    if (strand1 != strand2)
      return 1
    else
      return 0
    end
  end
end
