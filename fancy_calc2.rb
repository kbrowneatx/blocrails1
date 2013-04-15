def calculator()
  puts add(10,5)
  puts subtract(10,5)
  puts multiply(10,5)
  puts divide(10,5)

end

def add(num1, num2)
  result = num1 + num2
  output(num1, num2, result, "sum")
end

def subtract(num1, num2)
  result = num1 - num2
  output(num1, num2, result, "difference")
end

def multiply(num1, num2)
  result = num1 * num2
  output(num1, num2, result, "product")
end

def divide(num1, num2)
  result = num1.to_f / num2.to_f
  output(num1, num2, result, "quotient")
end

def output (num1, num2, result, op)
  "The #{ op } of #{ num1 } and #{ num2 } is #{ result }." 
end