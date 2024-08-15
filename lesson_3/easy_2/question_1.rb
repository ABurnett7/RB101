# In this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# see if "Spot" is present.

p ages.any? { |name, age| name == "Spot"} # => false

# Bonus: What are two other hash methods that would work just as well for this solution?

p ages.assoc("Spot") # => nil

ages.each_key { |key| p key == "Spot"} # => only prints falses because there is no Spot present. 


# I made it more complicated than it needed to be:

#Book solutions: 
p ages.key?("Spot")
p ages.include?("Spot")
p ages.member?("Spot")