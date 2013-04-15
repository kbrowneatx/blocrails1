# Array ops
us_carriers = ["Langley", "Lexington", "Saratoga", "Ranger", "Yorktown", "Enterprise", "Hornet"]

puts us_carriers.length
puts us_carriers.first
puts us_carriers.last
puts "-" * 2
puts us_carriers.slice(2..4)
puts "-" * 7

us_carriers.push("Wasp")
puts us_carriers.last
puts "-" * 7

puts us_carriers.sort
puts "-" * 7

us_carriers.pop
puts us_carriers
puts "-" * 7

puts us_carriers + ["Essex"]
puts "-" * 7
