# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. 
# A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.


def palindrome?(string)
  p string == string.reverse
end


palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

# Now write a method that determines whether an array or a string is palindromic; 
# that is, write a method that can take either an array or a string argument, and determines whether that argument is a palindrome. 
# You may not use an if, unless, or case statement or modifier.

def palindrome?(data)
  p data == data.reverse
end