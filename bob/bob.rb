class Prompt
  attr_reader :prompt, :type
  def initialize(prompt)
    @prompt = prompt
    @type   = get_prompt_type
  end

  def get_prompt_type
    return :shouting if is_shouting?
    return :question if is_question?
    return :silence if is_silence?
    :default
  end

  def is_shouting?
    return false if prompt.downcase == prompt   #Occurs if string is all lowercase or all numeric
    prompt.upcase == prompt
  end

  def is_question?
    prompt[-1] == '?'
  end

  def is_silence?
    prompt.strip.empty?
  end
end

class Bob
  REMARKS = {
    :shouting => 'Whoa, chill out!',
    :question => 'Sure.',
    :silence  => 'Fine. Be that way!',
    :default  => 'Whatever.'
  }

  def hey(input)
    prompt = Prompt.new(input)
    REMARKS[prompt.type]
  end
end
