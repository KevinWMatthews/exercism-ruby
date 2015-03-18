class Prime
  def self.nthPrime(n)
    numToTest = 1
    numMatches = 0
    while (numMatches < n)
      numToTest += 1
      if (isPrime(numToTest) == true)
        numMatches += 1
      end
    end
    numToTest
  end

  def self.isPrime(n)
    isPrimeFlag = true
    (2..(n-1)).each do |divisor|
      # puts ("#{n} % #{divisor} = #{n % divisor}")
      if (n % divisor == 0)
        isPrimeFlag = false
        break
      end
    end
    isPrimeFlag
  end
end

# (0..11).each do |n|
#   puts "  Test #{n}:"
#   if (Prime.isPrime(n) == true)
#     puts "#{n} is prime"
#   else
#     puts "#{n} is not prime"
#   end
#   puts
# end

(1..10).each do |i|
  puts "  Test #{i}:"
  puts Prime.nthPrime(i)
end
