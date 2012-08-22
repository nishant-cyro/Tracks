def calculate(*expression)
  regex = /^([0-9]+[\s][+\-*\/][\s])+([0-9]+)$/
  flag = regex =~ expression.join(' ') ? true : false
  if flag == false
    raise "Wrong Expression is entered."
  end

  [:/, :*, :+, :-].collect() { |operator|
  index_of_operator = expression.index operator
    while !index_of_operator.nil?
      expression[index_of_operator] = [expression[index_of_operator - 1], expression[index_of_operator + 1]].reduce(expression[index_of_operator])
      expression.slice!(index_of_operator - 1)
      expression.slice!(index_of_operator)
      index_of_operator = expression.index operator
    end
  }

  puts expression


  rescue Exception => e
  puts e.message
end

calculate 3, :+, 2, :*, 4