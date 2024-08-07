# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

def number_valid?(number)
  (number.class == Integer && number > 0) ? false : true
end

def stringy(number)

  loop do
    if number_valid?(number)
      p 'Invalid input'
      break
    end

    string_of_numbers = ''

    (0...number).each do |digit|
      string_of_numbers.<<( digit.even? ? '1' : '0' )
    end

    return string_of_numbers
  end

end

# The tests below should print true.
puts stringy(6) == '101010' 
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# These tests will print "Invalid input, false"
puts stringy('a') == '101010'
puts stringy(-2) == '101010'

#Need to learn how to validate number of arguments given.