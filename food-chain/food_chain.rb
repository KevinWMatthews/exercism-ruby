class Animal
  def self.message
    output = []
    output << self.intro
    output << self.remark
    output << self.swallow_what_now
    output << self.outro
    output.compact.flatten
  end

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

  def self.remark
  end

  def self.swallow_what_now
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

class Bird < Animal
  def self.intro
    super + "bird."
  end

  def self.remark
    "How absurd to swallow a bird!"
  end

  def self.swallow_what_now
    output = []
    output << super('bird', 'spider').chomp('.') + " that wriggled and jiggled and tickled inside her."
    output << Spider.swallow_what_now
  end
end

class Cat < Animal
  def self.intro
    super + "cat."
  end

  def self.remark
    "Imagine that, to swallow a cat!"
  end

  def self.swallow_what_now
    output = []
    output << super('cat', 'bird')
    output << Bird.swallow_what_now
  end
end

class FoodChain
  def self.song
  end

  def self.fly
    Fly.message
  end

  def self.spider
    Spider.message
  end

  def self.bird
    Bird.message
  end

  def self.cat
    Cat.message
  end
end
