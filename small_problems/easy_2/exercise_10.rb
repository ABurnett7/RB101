# Write a method that takes a number as an argument. 
# If the argument is a positive number, return the negative of that number. 
# If the number is 0 or negative, return the original number.


# def is_valid?(number) # started to write validation, but realized there's no user input in this problem. 
#   number.to_i.to_s == number ? true : false
# end

def negative(number)
  number <= 0 ? number : (number * -1)
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0 