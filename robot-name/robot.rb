class Robot
  attr_reader :name
  @@current_chars = "AA"
  @@current_nums = "000"

  def initialize
    @name = @@current_chars + @@current_nums
  end
end
