class Phrase
  attr_reader :phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    word_hash = Hash.new(0)
    phrase.split.each do |word|
      word_hash[word] = word_hash[word] + 1
    end
    word_hash
  end
end
