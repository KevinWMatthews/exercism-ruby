class Robot
  attr_reader :name
  @@current_chars = "AA"

  def initialize
    @name = @@current_chars + rand(1000).to_s
  end
end
