# Modify stringy so it takes an additional optional argument that defaults to 1. 
# If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.

#Skipping validation as I did it last time in exercise_3.rb, if this was full problem would need to validate start = 1 or 0 

def stringy(number, start = 1)

  string_of_numbers = ''

  if start == 0
    (0...number).each do |digit|
      string_of_numbers.<<( digit.odd? ? '1' : '0' )
    end
  elsif
    (0...number).each do |digit|
      string_of_numbers.<<( digit.even? ? '1' : '0' )
    end
  end

  return string_of_numbers
end

# The tests below should print true.
puts stringy(6, 0) == '010101' 
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'

puts stringy(6, 1) == '101010' 
puts stringy(9, 1) == '101010101'
puts stringy(4, 1) == '1010'
puts stringy(7, 1) == '1010101'

puts stringy(6) == '101010' 
puts stringy(1) == '1'
