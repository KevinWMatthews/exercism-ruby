class Phrase
  attr_reader :phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    word_hash = Hash.new(0)
    phrase.split(/[ *,*]/).each do |word|
      clean_word = word.delete('^A-Za-z') #Remove all non alphabetic characters
      next if clean_word.empty?
      word_hash[clean_word] = word_hash[clean_word] + 1
    end
    word_hash
  end
end
