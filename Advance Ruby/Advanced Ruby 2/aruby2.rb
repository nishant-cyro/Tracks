
def create_code

  puts "Enter the code"

  @lines_of_code = ''

  loop do
    line_of_code = gets
	
    if line_of_code.eql? "q\n"
      break;
    elsif line_of_code.eql? "\n"
      eval @lines_of_code
    else
      @lines_of_code += line_of_code 
    end
  end
end

create_code