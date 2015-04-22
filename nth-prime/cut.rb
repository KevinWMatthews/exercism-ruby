cut.rb

=begin
  WARNING! Mathematics ahead.
  Thus declares Wikipedia (see Primality Test):
    All primes are of the form 6k+i where i = -1, 0, 1, 2, 3, or 4
    6k+0, 6k+2, and 6k+4 are divisible by 2
    6k+3 is divisible by 3
    Thus we only test 2, 3, 6k-1, and 6k+1

    How many values of k do we test? Read carefully:
    When iterating through the factors of a number,
    said factors repeat themselves after sqrt(n):
    100 = (2)*50 = (4)*25 = (5)*20 = (10)*10 = (20)*5= (25)*4 = (50)*2
    Thus we test until 6k-1 reaches sqrt(n).
=end

  def self.largest_factor(num)
    (1+Math.sqrt(num))/6.0
  end

  def self.test_factor(num, k)
    divisible?(num, k) || divisible?(num, k+2)
  end

