#Can rewrite swallow_what_now to handle recursion better
#Might even be able to get the outro hooked up to it.

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
    "I know an old lady who swallowed a #{self.name}."
  end

  def self.outro
    "I don't know why she swallowed the fly. Perhaps she'll die."
  end

  #private?
  def self.swallow_what_now(name)
    "She swallowed the #{name} to catch the "
  end
end

class Fly < Animal
  def self.name
    "fly"
  end

  def self.remark
  end

  def self.swallow_what_now
  end
end

class Spider < Animal
  def self.name
    "spider"
  end

  def self.remark
    "It wriggled and jiggled and tickled inside her."
  end

  def self.swallow_what_now
    super(self.name) + Fly.name + "."
  end
end

class Bird < Animal
  def self.name
    "bird"
  end

  def self.remark
    "How absurd to swallow a bird!"
  end

  def self.swallow_what_now
    output = []
    output << super(self.name) + Spider.name + " that wriggled and jiggled and tickled inside her."
    output << Spider.swallow_what_now
  end
end

class Cat < Animal
  def self.name
    "cat"
  end

  def self.remark
    "Imagine that, to swallow a cat!"
  end

  def self.swallow_what_now
    output = []
    output << super(self.name) + Bird.name + "."
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
