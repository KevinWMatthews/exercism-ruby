class Bob
  def is_uppercase(string)
    return false if string.downcase == string   #Occurs if string is all lowercase or all numeric
    string.upcase == string
  end

  REMARKS = {
    :shouting => 'Whoa, chill out!',
    :question => 'Sure.',
    :silence  => 'Fine. Be that way!',
    :default  => 'Whatever.'
  }

  def hey(remark)
    return REMARKS[:shouting] if is_uppercase(remark)
    return REMARKS[:question] if remark[-1] == '?'
    return REMARKS[:silence] if remark.strip.empty?
    REMARKS[:default]
  end
end
