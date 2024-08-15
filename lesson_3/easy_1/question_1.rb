# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# I expect the code to print the element of the array [1, 2, 2, 3] each on a new line.  This is because uniq is not a destructive method.  
# numbers.uniq will return [1, 2, 3] without mutating the object [1, 2, 2, 3].