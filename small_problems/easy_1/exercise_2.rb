# Write a method that takes one integer argument, which may be positive, negative, or zero. 
# This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

def is_odd?(number)
  number.odd?
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

#LS solution used modulo.  

# Further Exploration: 
# What if modulo returned remainder as it does in other languages?  then it would return -1 for negative numbers, how would you handle it?

# I'd use abs. but you could also do != 0 
