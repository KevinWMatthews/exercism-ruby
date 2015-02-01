class Complement
  def self.of_dna(nucleotide)
    if nucleotide == 'C'
      'G'
    elsif nucleotide == 'G'
      'C'
    elsif nucleotide == 'T'
      'A'
    elsif nucleotide == 'A'
      'U'
    end
  end
end
