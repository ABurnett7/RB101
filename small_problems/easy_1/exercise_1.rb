# A method to take a string and an integers and print the string on the screen 


def string_valid(string) # Validating a string was entered
  string.class != String ? true : false
end

def is_integer(integer) # Validating an integer was entered
  integer.class != Integer ? true : false
end

def integer_valid(integer)
  integer <= 0 ? true : false
end

def repeat(string, integer)
  loop do

    if string_valid(string)
      p "Invalid string"
      break
    end

    if is_integer(integer)
      p "Invalid integer"
      break
    end

    if integer_valid(integer)
      p "Integer must be greater than 0"
      break
    end
    
    integer.times do 
      p string
    end
    break
  end
end

repeat('Hello', -2)
repeat('Hello', '3')
repeat(3, 3)
repeat('Hello', 3)

