class Hamming
  def self.compute(original_strand, new_strand)
    raise ArgumentError, "Strands are of unequal length" if original_strand.length != new_strand.length

    orginal_bases = original_strand.each_char
    new_bases = new_strand.each_char
    orginal_bases.zip(new_bases).count {|original_base, new_base| original_base != new_base}
  end
end
