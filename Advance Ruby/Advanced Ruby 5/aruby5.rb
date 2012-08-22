
def instance_string

  my_string = "hello"
  my_new_string = "bye"

  def my_string.exclude? word
    not self.include? word
  end

  class << my_string
    def reverse_line line
      line.split.reverse.join " "
    end
  end

  puts my_string.exclude? "hel"
  puts my_string.reverse_line "hello i am here"

  puts my_new_string.reverse_line "hello i am here"
  puts my_new_string.exclude? "hel"

end

instance_string