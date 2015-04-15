class Prime
  def self.nth(n)
    raise ArgumentError.new("Can't find the #{n}th prime") if (n <= 0)

    primes = []
    i = 2
    until (primes.length == n)
      if (prime?(i))
        primes << i
      end
      i += 1
    end
    primes.last
  end

  def self.divisible?(dividend, divisor)
    dividend % divisor == 0
  end

  def self.prime?(num)
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
    return num > 1 if num <= 3
    return false if (divisible?(num,2) || divisible?(num,3))

    # k <= (1+sqrt(num)/6) or
    max_k = (Math.sqrt(num)+1)/6.0
    return false if (1..max_k).any? {|k| divisible?(num,6*k+1) || divisible?(num,6*k-1)}
    true
  end
end
