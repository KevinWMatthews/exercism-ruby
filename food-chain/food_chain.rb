class Animal
  def self.outro
    "I don't know why she swallowed the fly. Perhaps she'll die."
  end
end

class Fly < Animal
  def self.swallow
    "I know an old lady who swallowed a fly."
  end
end

class Spider < Animal
  def self.swallow
    "I know an old lady who swallowed a spider."
  end

  def self.remark
    "It wriggled and jiggled and tickled inside her."
  end

  def self.chase
    "She swallowed the spider to catch the fly."
  end
end

class FoodChain
  def self.song
  end

  def self.fly
    [
      Fly.swallow,
      Fly.outro
    ]
  end

  def self.spider
    [
      Spider.swallow,
      Spider.remark,
      Spider.chase,
      Spider.outro
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
