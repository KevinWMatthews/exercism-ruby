class Bob
  def hey(remark)
    if remark.upcase == remark
      return 'Whoa, chill out!'
    end
    return 'Sure.' if remark[-1] == '?'
    'Whatever.'
  end
end
