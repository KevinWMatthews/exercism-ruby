class Robot
  attr_reader :name
  ALPHABET = Array("A".."Z")

  def initialize
    @name = random_name
  end

  def random_name
    random_char + random_char + random_number.to_s
  end

  def reset
    @name = random_name
  end

  def random_number
    '%03i' % rand(999)
  end

  def random_char
    ALPHABET[rand(25)]
  end
end
