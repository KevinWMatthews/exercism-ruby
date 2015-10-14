class Animal
  def self.message
    output = []
    output << intro
    output << remark
    output << swallow_series
    output << outro
    output.flatten.compact
  end

  def self.intro
    "I know an old lady who swallowed a #{name}."
  end

  def self.outro
    output = []
    output << "I don't know why she swallowed the fly. Perhaps she'll die."
    output << ""
  end

  def self.swallow_series
    output = []
    output << she_swallowed + next_in_food_chain.name + "."
    output << next_in_food_chain.swallow_series
  end

  def self.name
    super.downcase
  end

  private
  def self.she_swallowed
    "She swallowed the #{name} to catch the "
  end
end

class Fly < Animal
  def self.remark
  end

  def self.swallow_series
  end
end

class Spider < Animal
  def self.next_in_food_chain
    Fly
  end

  def self.remark
    "It wriggled and jiggled and tickled inside her."
  end
end

class Bird < Animal
  def self.next_in_food_chain
    Spider
  end

  def self.remark
    "How absurd to swallow a bird!"
  end

  def self.swallow_series
    output = []
    output << she_swallowed + next_in_food_chain.name + " that wriggled and jiggled and tickled inside her."
    output << next_in_food_chain.swallow_series
  end
end

class Cat < Animal
  def self.next_in_food_chain
    Bird
  end

  def self.remark
    "Imagine that, to swallow a cat!"
  end
end

class Dog < Animal
  def self.next_in_food_chain
    Cat
  end

  def self.remark
    "What a hog, to swallow a dog!"
  end
end

class Goat < Animal
  def self.next_in_food_chain
    Dog
  end

  def self.remark
    "Just opened her throat and swallowed a goat!"
  end
end

class Cow < Animal
  def self.next_in_food_chain
    Goat
  end

  def self.remark
    "I don't know how she swallowed a cow!"
  end
end

class Horse < Animal
  def self.remark
  end

  def self.swallow_series
  end

  def self.outro
    output = []
    output << "She's dead, of course!"
    output << ""
  end
end

class FoodChain
  def self.song
    output = []
    output << Fly.message
    output << Spider.message
    output << Bird.message
    output << Cat.message
    output << Dog.message
    output << Goat.message
    output << Cow.message
    output << Horse.message
    output.flatten.join("\n")
  end
end
