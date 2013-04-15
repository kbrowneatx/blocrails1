# beginning hashes
phones = {"Elizabeth" => 4155551212, "Robert" => 6505551212, "Christopher" => 5105551212 }
puts phones["Elizabeth"]
phones["Elizabeth"] = 3105551212
puts phones["Elizabeth"]

puts "-" * 7
nicknames = {"TJ" => "Tom Prisk", "Billy Mark" => "Mark Youngman", "Scottso" => "Scott Schroeder", "Edge" => "Ed Gentile" }
puts nicknames["Billy Mark"]
puts nicknames["Scottso"]
puts nicknames["Edge"]
puts nicknames["TJ"]

puts "-" * 7
def adjuster()
  steaks = {"T-bone" => 24.99, "Top Sirloin" => 14.99, "New York Strip" => 19.99, "Filet Mignon" => 29.99 }
  steaks.each do |item, price|
    price = (price * 0.8).round(2)
    steaks[item] = price
    puts "#{ item } is now #{ price }"
  end
end

adjuster()