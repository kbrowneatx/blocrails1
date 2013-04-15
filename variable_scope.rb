# Variable scope

# Using Local variables (must pass them between methods)
def add (num1, num2)
  result = num1 + num2
  output("sum", num1, num2, result)
end

def output(operator, num1, num2, result)
  "The #{operator} of #{num1} and #{num2} is #{result}."
end

puts add(3,5) #prints "The sum of 3 and 3 is 8."

# Using Instance variables (methods on same object can access object's data)
def add (num1, num2)
  @num1 = num1
  @num2 = num2
  output("sum", num1 + num2)
end

def output(operator, result)
  "The #{operator} of #{@num1} and #{@num2} is #{result}."
end

puts add(3,5) #prints "The sum of 3 and 3 is 8."

