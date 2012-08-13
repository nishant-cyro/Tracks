puts "Enter the name of file in csv format"
filename = gets.chomp
class_name = filename.split(".").first.capitalize

Object.const_set(class_name, Class.new)

objects = Array.new

def makeObjects
	i = 0
	File.readlines("movies.csv").each do |line|
	  if i==0
	  	makeFunctions line.split " "
	  else
	  	objects << readValue line.split " "
	  end
	end
end

makeFunctions *args
Object.const_get.class_eval
define_method("get" + arguement)
@
end

end

readFile