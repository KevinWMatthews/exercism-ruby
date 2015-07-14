class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError, "Strands are of unequal length" if strand1.length != strand2.length

    all_bases1 = strand1.each_char
    all_bases2 = strand2.each_char
    all_bases1.zip(all_bases2).count {|base1, base2| base1 != base2}
  end
end
