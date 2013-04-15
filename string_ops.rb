def transformer()
  puts echo("Repetitive")
  puts shout("hey you")
  puts reverse("palindrome")
end

def echo(str1)
  str1 + " " + str1
end

def shout(str1)
  str1.upcase
end

def reverse(str1)
  str1.reverse
end