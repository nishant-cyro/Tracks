
def check_palindrome
  puts "Enter a string"
  answer = gets.chomp

  if answer.eql?(answer.reverse)
    puts "yes"
  else
    puts "no"
   end
end

def loop_palindrome

  loop do 
    puts "Enter any key to continue and enter 'q' or 'Q' to quit"
    choice = gets.chomp
 
      case choice
        when 'q', 'Q'
    	    then break
        else
		      check_palindrome
	      end
    end
end

loop_palindrome