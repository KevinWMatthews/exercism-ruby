class Bob
  def is_uppercase(string)
    return false if string.downcase == string   #Occurs if string is all lowercase or all numeric
    string.upcase == string
  end

  def hey(remark)
    return 'Whoa, chill out!' if is_uppercase(remark)
    return 'Sure.' if remark[-1] == '?'
    return 'Fine. Be that way!' if remark.strip.empty?
    'Whatever.'
  end
end
