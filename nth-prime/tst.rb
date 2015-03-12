# (3..11).each do |n|
#   puts "Test #{n}:"
#   (1..(n-2)).each do |i|
#     puts "#{n}%#{(n-i)}: #{n%(n-i)}"
#     if (n%(n-i) == 0)
#       break
#     end
#   end
#   puts
# end


# puts "Test 5:"
# puts "5%4: #{5%4}"
# puts "5%3: #{5%3}"
# puts "5%2: #{5%2}"

(2..6).each do |n|
  puts "Test #{n}:"
  (2..(n-1)).each do |i|
    print "#{n}%#{i}: "
    puts n%i
  end
  puts
end
