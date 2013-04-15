#simple looping
def title_case(string1)
  str_array = string1.split
  str_array.each do |word|
    word.capitalize!
  end
  return str_array.join(" ")
end

my_str = "four score and seven years ago"
puts title_case(my_str)

# factorial
def factorial(int)
  p = 1
  (1..int).each { |num| p = p * num }
  return p
end

puts factorial(10)
