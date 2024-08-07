# Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

# Pretty easy when you're aware of the right built in methods. 

def reversed_number(number)
  number.digits.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1

#Let's try without those builtins 


def reversed_number(number)
  string = number.to_s
  reversed = ''
  counter = 1 

  until counter > string.size
    reversed.<<(string[string.size - counter])
    counter += 1
  end
  return reversed.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1