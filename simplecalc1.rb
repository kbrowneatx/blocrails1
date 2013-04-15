def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def multiply(num1, num2)
  num1 * num2
end

def divide(num1, num2)
  num1.to_f / num2.to_f
end

def remainder(num1, num2)
  num1 % num2
end

def exponent(num1, num2)
  num1 ** num2
end

puts add(8,5)
puts subtract(8,5)
puts multiply(12,3)
puts divide(12,3)
puts remainder(10,3)
puts exponent(2, 8)
