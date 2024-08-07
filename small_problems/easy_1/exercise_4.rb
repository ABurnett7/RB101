# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. 
# If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

def valid_salary?(salary)
  (salary.class == Integer && salary > 0) ? false : true
end

def bonus?(bonus)
  (bonus == true || bonus == false) ? false : true # Would prefer to test class, but they don't seem to have a boolean class. 
end

def calculate_bonus(salary, bonus)
  loop do

    if valid_salary?(salary)
      p "Invalid salary"
      break
    end

    if bonus?(bonus)
      p "Invalid true/false"
      break
    end

    return (bonus == true ? salary / 2 : 0)
    break # Unnecessary but just in case

  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
# The tests above should print true.

puts calculate_bonus(-10, true) == 1400
puts calculate_bonus('a', false) == 0
puts calculate_bonus(50000, 'a') == 25000

# The tests above should be invalid and false
