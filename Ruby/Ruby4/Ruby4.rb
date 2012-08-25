
def check_palindrome input_string
  
  if input_string.downcase.eql?(input_string.downcase.reverse)
    puts "Yes, it's a palindrome"
  else
    puts "No, it's not a palindrome"
  end
end

def ask_palindrome
  loop do
    puts "Enter a string or enter 'q/Q' to quit"
    input_string  = gets.chomp

    case input_string
      when 'q', 'Q'
        then break
      else
        check_palindrome input_string
    end
  end
end

ask_palindrome