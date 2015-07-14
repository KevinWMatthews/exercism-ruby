a = ["word", "notx", "word"]

puts a.count("w")
puts a.count("notx")
puts a.count("word")
puts

a.each { |w| puts a.count(w) }

a.chunk { |w| a.count(w) }.each { |w, c| puts "#{[w, c]}" }
