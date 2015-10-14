class Animal
  def message
    output = []
    output << intro
    output << remark
    output << swallow_series
    output << outro
    output.flatten.compact
  end

  def intro
    "I know an old lady who swallowed a #{name}."
  end

  def outro
    output = []
    output << "I don't know why she swallowed the fly. Perhaps she'll die."
    output << ""
  end

  def swallow_series
    output = []
    output << she_swallowed + next_in_food_chain.name + "."
    output << next_in_food_chain.swallow_series
  end

  def name
    self.class.name.downcase
  end

  private
  def she_swallowed
    "She swallowed the #{name} to catch the "
  end
end

class Fly < Animal
  def remark
  end

  def swallow_series
  end
end

class Spider < Animal
  def next_in_food_chain
    Fly.new
  end

  def remark
    "It wriggled and jiggled and tickled inside her."
  end
end

class Bird < Animal
  def next_in_food_chain
    Spider.new
  end

  def remark
    "How absurd to swallow a bird!"
  end

  def swallow_series
    output = []
    output << she_swallowed + next_in_food_chain.name + " that wriggled and jiggled and tickled inside her."
    output << next_in_food_chain.swallow_series
  end
end

class Cat < Animal
  def next_in_food_chain
    Bird.new
  end

  def remark
    "Imagine that, to swallow a cat!"
  end
end

class Dog < Animal
  def next_in_food_chain
    Cat.new
  end

  def remark
    "What a hog, to swallow a dog!"
  end
end

class Goat < Animal
  def next_in_food_chain
    Dog.new
  end

  def remark
    "Just opened her throat and swallowed a goat!"
  end
end

class Cow < Animal
  def next_in_food_chain
    Goat.new
  end

  def remark
    "I don't know how she swallowed a cow!"
  end
end

class Horse < Animal
  def remark
  end

  def swallow_series
  end

  def outro
    output = []
    output << "She's dead, of course!"
    output << ""
  end
end

class FoodChain
  def self.song
    output = []
    output << Fly.new.message
    output << Spider.new.message
    output << Bird.new.message
    output << Cat.new.message
    output << Dog.new.message
    output << Goat.new.message
    output << Cow.new.message
    output << Horse.new.message
    output.flatten.join("\n")
  end
end
