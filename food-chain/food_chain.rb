class Animal
  def self.intro
    "I know an old lady who swallowed a "
  end

  def self.outro
    "I don't know why she swallowed the fly. Perhaps she'll die."
  end

  #private?
  def self.swallow_what_now(predator, prey)
    "She swallowed the #{predator} to catch the #{prey}."
  end
end

class Fly < Animal
  def self.intro
    super + "fly."
  end
end

class Spider < Animal
  def self.intro
    super + "spider."
  end

  def self.remark
    "It wriggled and jiggled and tickled inside her."
  end

  def self.swallow_what_now
    super('spider', 'fly')
  end
end

class FoodChain
  def self.song
  end

  def self.fly
    [
      Fly.intro,
      Fly.outro
    ]
  end

  def self.spider
    [
      Spider.intro,
      Spider.remark,
      Spider.swallow_what_now,
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
