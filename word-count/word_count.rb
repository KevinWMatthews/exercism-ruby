class Phrase
  attr_accessor :word_count

  def initialize(string)
    @string = string
    word_count = {}
  end

  def word_count
    {'word' => 1}
  end
end
