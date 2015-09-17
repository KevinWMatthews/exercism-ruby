s = "th is^is^!@#9word{} '' ;as"
# c = s.each_char.select {|c| c.match(/[[:alpha:]]/)}
# puts c.inspect
# puts c.join('').inspect

# d = s.delete('^A-Za-z')
# puts d.inspect

puts s.split(/ ,*/).inspect
