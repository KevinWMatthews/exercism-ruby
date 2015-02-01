class Complement
  def self.of_dna(nucleotide)
    if nucleotide == 'C'
      'G'
    elsif nucleotide == 'G'
      'C'
    end
  end
end
