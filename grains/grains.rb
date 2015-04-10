class Grains
  def square(n)
    2**(n-1)
  end

  def total
    num_grains = 0
    (1..64).inject { |num_grains, n| num_grains + square(n) }
  end
end
