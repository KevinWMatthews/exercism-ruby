class Fly
  def self.swallow
    "I know an old lady who swallowed a fly."
  end
end

class FoodChain
  def self.song
  end

  def self.outro
    "I don't know why she swallowed the fly. Perhaps she'll die."
  end

  def self.fly
    [
      Fly.swallow,
      self.outro
    ]
  end

  def self.spider
    [
      "I know an old lady who swallowed a spider.",
      "It wriggled and jiggled and tickled inside her.",
      "She swallowed the spider to catch the fly.",
      "I don't know why she swallowed the fly. Perhaps she'll die."
    ]
  end

  def self.bird
    [
      "I know an old lady who swallowed a bird.",
      "How absurd to swallow a bird!",
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
      "She swallowed the spider to catch the fly.",
      "I don't know why she swallowed the fly. Perhaps she'll die."
    ]
  end

  def self.cat
    [
      "I know an old lady who swallowed a cat.",
      "Imagine that, to swallow a cat!",
      "She swallowed the cat to catch the bird.",
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
      "She swallowed the spider to catch the fly.",
      "I don't know why she swallowed the fly. Perhaps she'll die."
    ]
  end
end
