class Bob
  def hey(remark)
    return 'Whoa, chill out!' if remark.upcase == remark
    return 'Sure.' if remark[-1] == '?'
    'Whatever.'
  end
end
