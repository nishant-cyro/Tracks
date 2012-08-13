puts "Enter the name of file in csv format(movies.csv)"
filename = gets.chomp
class_name = filename.split(".").first.capitalize

class_name = Object.const_set(class_name, Class.new)


objects = Array.new

def makeObjects filename, class_name, objects
  i = 0
  fields = []
  File.readlines(filename).each do |line|
    if i==0
      fields = line.split(",")
	  makeFunctions class_name
	else
	  new_object = class_name.new fields, line.split(',') 
	  objects <<  new_object
	end
	i += 1
  end
end

def display_objects class_name, objects
  for new_object in objects
	puts "\n#{class_name} #{objects.index(new_object) + 1} " 
	new_object.display
  end
end

def makeFunctions class_name
  class_name.class_eval do
    def initialize fields, values
      for i in (0...fields.size)
    	self.instance_variable_set('@' + fields[i].chomp, values[i])
      end
    end
  
    def display
      for instance_variable in instance_variables
     	puts "#{instance_variable} : #{self.instance_variable_get(instance_variable)}"
      end
    end
  end
end

makeObjects filename, class_name, objects
display_objects class_name, objects