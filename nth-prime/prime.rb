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

  def self.largest_factor_to_test(num)
    (1+Math.sqrt(num))/6.0
  end

  def self.has_factor(num, k)
    divisible?(num, 6*k+1) || divisible?(num, 6*k-1)
  end

  def self.prime?(num)
    return num > 1 if num <= 3
    return false if (divisible?(num,2) || divisible?(num,3))

    max_k = largest_factor_to_test(num)
    return false if (1..max_k).any? {|k| has_factor(num,k)}
    true
  end
end
