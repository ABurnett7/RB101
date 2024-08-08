# Create a method that takes two arguments, multiplies them together, and returns the result.

def multiply(x, y)
  return (x * y)
end

puts multiply(5, 3) == 15


puts multiply('a', 2)
puts multiply(['a', 'b', 3], 2)
puts multiply(2, 'a') => error