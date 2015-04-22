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
    return num > 1 if num <= 3
    return false if (divisible?(num,2) || divisible?(num,3))

    # Look up Primality Test on Wikipedia to see which factors we actually need to test:
    #   Only need to test factors up to to the square root of num
    #   Can step by 6 (yes, really!)
    # If no factors are divisible, we have a prime number!
    (5..Math.sqrt(num)).step(6).none? {|k| divisible?(num,k) || divisible?(num,k+2)}
  end
end
