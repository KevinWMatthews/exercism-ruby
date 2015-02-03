class Squares
  def initialize(integer)
    @integer = integer
  end

  def square_of_sums
    sum = 0
    for i in 1..@integer
      sum += i
    end
    sum**2
  end

  def sum_of_squares
    sum = 0
    for i in 1..@integer
      sum += i**2
    end
    sum
  end
end
