# comments
# if yr / 4, might be a leap yr
#   if yr / 100 and yr / 400, is a leap yr

def leap_year?(yr1)
  if yr1 % 4 > 0
    false
  elsif yr1 % 100 == 0
    if yr1 % 400 == 0
      true
    else
      false
    end
  elsif yr1 % 4 == 0
    true
  end
end

puts leap_year?(2017)