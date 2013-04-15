def calculator()
  puts add(10, 5)
  puts subtract(10, 5)
  puts multiply(10, 5)
  puts divide(10, 5)

end

def add(num1, num2)
  "The sum of #{ num1 } and #{ num2 } is #{ num1 + num2 }."
end

def subtract(num1, num2)
  "The difference of #{ num1 } and #{ num2 } is #{ num1 - num2 }."
end

def multiply(num1, num2)
  "The product of #{ num1 } and #{ num2 } is #{ num1 * num2 }."
end

def divide(num1, num2)
  "The quotient of #{ num1 } and #{ num2 } is #{ num1.to_f / num2.to_f }."
end