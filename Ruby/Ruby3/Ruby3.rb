def vowel_replacement

  pattern = /[aieouAEIOU]/
  puts "Enter a string to be altered"

  answer = gets.chomp
  answer.gsub!(pattern, '*')
  puts answer
end

vowel_replacement