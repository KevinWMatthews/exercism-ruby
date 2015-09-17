class Phrase
  attr_reader :phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words = phrase.downcase.split(/[ *,*]/)
    word_hash = Hash.new(0)
    words.each do |word|
      clean_word = word.delete('^A-Za-z0-9\'')
      next if clean_word.empty?
      word_hash[clean_word] = word_hash[clean_word] + 1
    end
    word_hash
  end
end
