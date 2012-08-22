
class NewMethod
  def initialize method_name, line_of_code
    @@method_name = method_name
    @@line_of_code = line_of_code
    NewMethod.creating_new_method
  end

  def self.creating_new_method
    
    define_method("#{@@method_name}")  do
      eval @@line_of_code
    end
  end
end