# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Examples:


# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.

# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# Tried to make it so it could be expanded easily
# Would be cool to take two digits so you could choose the range to perform the operations on. 

def sum(number)
  return (1..number).reduce(:+)
end

def product(number)
  return (1..number).reduce(:*)
end

def is_valid_number?(number)
  0 < number ? true : false
end

def is_valid_operation?(operation)
  valid_operators = ['s', 'p']
  (valid_operators.include?(operation) ) ? true : false 
end

def basic_math()
  number = ''
  operation = ''
  loop do 
    puts ">> Please enter an integer greater than 0:"
    number = gets.chomp.to_i

    break if is_valid_number?(number)
    puts ">> Invalid number."
  end

  loop do
    puts ">> Enter 's' to compute the sum, 'p' to compute the product."
    operation = gets.chomp.downcase

    break if is_valid_operation?(operation)
    puts ">> Invalid operation."
  end

  case
  when operation == 's'
    puts "The sum of the integers between 1 and #{number} is #{sum(number)}"
  
  when operation == 'p'
    puts "The product of the integers between 1 and #{number} is #{product(number)}." 
  end
end

basic_math()




