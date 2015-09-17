class Bob
  def hey(remark)
    return 'Whoa, chill out!' if remark.upcase == remark && remark.downcase != remark
    return 'Sure.' if remark[-1] == '?'
    return 'Fine. Be that way!' if remark.strip.empty?
    'Whatever.'
  end
end
