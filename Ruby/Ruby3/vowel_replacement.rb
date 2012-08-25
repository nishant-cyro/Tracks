class VowelReplacement

  def initialize input_string
  	@input_string = input_string
  	@pattern = /[aieou]/i
  end

  def replacing_vowels
  	@input_string.gsub(@pattern, '*') 
  end
end