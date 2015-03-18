class Prime
  def self.nth(n)
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
      puts ("#{n} % #{divisor} = #{n % divisor}")
      if (n % divisor == 0)
        isPrimeFlag = false
        break
      end
    end
    isPrimeFlag
  end
end