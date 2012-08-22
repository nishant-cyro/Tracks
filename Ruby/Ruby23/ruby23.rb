

def tranfer_data

  emp_hash = Hash.new

  File.open("employees.csv").each do |line|
    name, empid, designation = line.split(", ")
    designation.chomp!
    if emp_hash.has_key?(designation)
      emp_info = " #{name} ( EmpId : #{empid} ) "
      emp_hash[designation] << emp_info
    else
      emp_info = Array.new
      emp_info << " #{name} ( EmpId : #{empid} ) "
      emp_hash[designation] = emp_info
    end
  end


  File.open("save.csv", "w") do |file|
    emp_hash.each { |key, value|
      file.puts "#{key}:\n"
      value.each do |emp_info|
        file.puts "#{emp_info}"
      end
    }
  end
end

tranfer_data