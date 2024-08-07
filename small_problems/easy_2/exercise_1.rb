# Build a program that randomly generates and prints Teddy's age. 
# To get the age, you should generate a random number between 20 and 200.

def Teddy_age()
  age = (20..200).to_a.sample

  puts "Teddy is #{age} years old!"
  
end

Teddy_age()

#Further Exploration
# Modify this program to ask for a name, and then print the age for that person. 
# For an extra challenge, use "Teddy" as the name if no name is entered.


def Teddy_age(name)
  age = (20..200).to_a.sample
  name = (name == '' ? 'Teddy' : name)
  puts "#{name} is #{age} years old!"
  
end

puts "What's your name?"
name = gets.chomp
Teddy_age(name)