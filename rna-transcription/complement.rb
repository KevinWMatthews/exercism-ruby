class Complement
  def self.of_dna(nucleotide)
    if nucleotide == 'C'
      'G'
    elsif nucleotide == 'G'
      'C'
    elsif nucleotide == 'T'
      'A'
    end
  end
end
