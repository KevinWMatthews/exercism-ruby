#Can rewrite swallow_what_now to handle recursion better
#Might even be able to get the outro hooked up to it.

class Animal
  def self.message
    output = []
    output << intro
    output << remark
    output << swallow_what_now
    output << outro
    output.compact.flatten
  end

  def self.intro
    "I know an old lady who swallowed a #{self.name}."
  end

  def self.outro
    "I don't know why she swallowed the fly. Perhaps she'll die."
  end

  #private?
  def self.she_swallowed(name)
    "She swallowed the #{name} to catch the "
  end

  def self.swallow_what_now
    output = []
    output << she_swallowed(name) + next_in_food_chain.name + "."
    output << next_in_food_chain.swallow_what_now
    output.compact
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

  def self.next_in_food_chain
    Fly
  end

  def self.remark
    "It wriggled and jiggled and tickled inside her."
  end
end

class Bird < Animal
  def self.name
    "bird"
  end

  def self.next_in_food_chain
    Spider
  end

  def self.remark
    "How absurd to swallow a bird!"
  end

  def self.swallow_what_now
    output = []
    output << she_swallowed(name) + next_in_food_chain.name + " that wriggled and jiggled and tickled inside her."
    output << next_in_food_chain.swallow_what_now
  end
end

class Cat < Animal
  def self.name
    "cat"
  end

  def self.next_in_food_chain
    Bird
  end

  def self.remark
    "Imagine that, to swallow a cat!"
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
