# Write a program that prompts the user for two positive integers, 
# and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. 
# Do not worry about validating the input.

#I did lots of mini defitions for readability and to scale if wanted. 
def addition(x, y)
  "#{x} + #{y} = #{x + y}"
end

def subtraction(x, y)
  "#{x} - #{y} = #{x - y}"
end

def product(x, y)
  "#{x} * #{y} = #{x * y}"
end

def quotient(x, y)
  "#{x} / #{y} = #{x / y}"
end

def remainder(x, y)
  "#{x} % #{y} = #{x % y}"
end

def power(x, y)
  "#{x} ** #{y} = #{x ** y}"
end


def arithmetic(x, y)
  
  puts addition(x, y)
  puts subtraction(x, y)
  puts product(x, y)
  puts quotient(x, y)
  puts remainder(x, y)
  puts power(x, y)

end

puts ">> Enter the first number:"
x = gets.chomp.to_i

puts ">> Enter the second number:"
y = gets.chomp.to_i

arithmetic(x, y)