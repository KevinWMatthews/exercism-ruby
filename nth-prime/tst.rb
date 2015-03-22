def isDivisible(dividend, divisor)
  if (dividend % divisor == 0)
    return true
  else
    return false
  end
end

#Test code
# (1..10).each do |n|
#   print "#{n}: "
#   puts isDivisible(10,n)
# end

# def isPrime(num)
#   divisor = 2
#   while (divisor**2 <= num) do
#     puts "  divisor: #{divisor}"
#     if (isDivisible(num, divisor) == true)
#       return false
#     end
#     divisor += 1
#   end
#   return true
# end

#Test code
# (100000..100001).each do |n|
#   puts "n: #{n}"
#   puts isPrime(n)
#   puts
# end

def isPrime(num)
=begin
WARNING! Mathematics ahead.
Thus declares Wikipedia:
  All primes are of the form 6k+i or 6k-i, where i = -1, 0, 1, 2, 3, or 4
  6k+0, 6k+2, and 6k+4 are divisible by 2
  6k+3 is divisible by 3
  Thus we only test 2, 3, 6k-1, and 6k+1

  Also note that, when iterating through the factors of a number,
  the factors repeat themselves after sqrt(n):
  100 = (2)*50 = (4)*25 = (5)*20 = (10)*10 = (20)*5= (25)*4 = (50)*2,
  so only test until 6k-1 reaches sqrt(n)
=end
  return num > 1 if num <= 3
  return false if (isDivisible(num,2) || isDivisible(num,3))

  k = 1
  while ((6*k-1)**2 <= num) do
    return false if (isDivisible(num,6*k+1) || isDivisible(num,6*k-1))
    k += 1
  end

  return true
end

def nthPrime(n)
  primes = Array.new
  i = 2
  until (primes.length == n)
    # puts i
    # puts n
    # puts primes.length
    # puts primes.inspect
    # puts
    if (isPrime(i))
      primes << i
    end
    i += 1
  end
  return primes.last
end

(1..6).each { |n| puts nthPrime(n) }

puts nthPrime(100)
puts nthPrime(1000)
puts nthPrime(10001)

