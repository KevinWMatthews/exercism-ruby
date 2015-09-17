alphabet = Array("A".."Z")

puts alphabet.inspect
25.times {puts alphabet[rand(25)]}
puts

10.times {puts alphabet[rand(25)] + alphabet[rand(25)]}
