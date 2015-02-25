alphabet = Hash.new
alphabet = ("A".."Z").map {|i| i}

puts alphabet.inspect
25.times {puts alphabet[rand(25)]}
puts

10.times {puts alphabet[rand(25)] + alphabet[rand(25)]}
