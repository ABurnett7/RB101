# Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Create an array containing only two elements: Barney's name and Barney's number.

barney_array = flintstones.to_a.select{ |inner| inner.include?("Barney") }.flatten!

# This is probably crazy convoluted, but it works!
p barney_array

# Wow, the solution is much easier than what I had
# flintstones.assoc("Barney")
#=> ["Barney", 2]