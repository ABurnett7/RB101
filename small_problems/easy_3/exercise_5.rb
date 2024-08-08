# Using the multiply method from the "Multiplying Two Numbers" problem, 
# write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

def multiply(x, y) # From last problem
  return (x * y)
end

def square(z)
  multiply(z, z)
end

puts square(5) == 25
puts square(-8) == 64

# What if we wanted to generalize this method to a "power to the n" type method: cubed, to the 4th power, to the 5th, etc. 
# How would we go about doing so while still using the multiply method?

def power(base, power)
  multiply(base, 1)**power
end

p power(2, 3) == 8
p power(8, 5) == 32_768

