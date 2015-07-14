class Phrase
  attr_accessor :word_array, :word_hash
  def initialize(string)
    @string = string
    word_array = []
  end

  def word_count
    word_array = @string.split(" ")

    result = word_array.chunk { |w| word_array.count(w) }

  end
end
