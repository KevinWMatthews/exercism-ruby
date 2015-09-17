s = "this^is^!@#word{}"
c = s.each_char.select {|c| c.match(/[[:alpha:]]/)}
puts c.inspect
puts c.join('').inspect
