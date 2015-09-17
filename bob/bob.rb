class Bob
  def is_uppercase?(string)
    return false if string.downcase == string   #Occurs if string is all lowercase or all numeric
    string.upcase == string
  end

  def is_question?(string)
    string[-1] == '?'
  end

  def is_silence?(string)
    string.strip.empty?
  end

  REMARKS = {
    :shouting => 'Whoa, chill out!',
    :question => 'Sure.',
    :silence  => 'Fine. Be that way!',
    :default  => 'Whatever.'
  }

  def hey(remark)
    return REMARKS[:shouting] if is_uppercase?(remark)
    return REMARKS[:question] if is_question?(remark)
    return REMARKS[:silence]  if is_silence?(remark)
    REMARKS[:default]
  end
end
