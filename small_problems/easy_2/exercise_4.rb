# Build a program that displays when the user will retire and how many years she has to work till retirement.

# Worked hard on validation last time, and the solution didn't have any, so skipping validation this time.

# Example:
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go


def time_until_retirement()
  puts ">> What is your age?"
  current_age = gets.chomp.to_i

  puts ">> At what age would you like to retire?"
  retirement_age = gets.chomp.to_i

  years_left = (retirement_age - current_age)

  p "It's #{Time.new.year}. You will retire in #{Time.new.year + years_left}."
  p "You have only #{years_left} years of work to go"

end

time_until_retirement()