class Hamming
  def self.compute(strand1, strand2)
    if strand1.length != strand2.length
      raise ArgumentError, "Strands are of unequal length"
    end

    distance = 0
    strand1.split("").zip(strand2.split("")) do |base1, base2|
      if (base1 != base2)
        distance += 1
      end
    end
    distance
  end
end
