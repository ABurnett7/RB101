# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.


def searching()
  
  array_of_numbers = []
  ordinals = ['1st', '2nd', '3rd', '4th', '5th', 'last']

  ordinals.each do |ordinal|
    puts "Enter the #{ordinal} number:"
    array_of_numbers << gets.chomp.to_i
  end

  final_number = array_of_numbers.pop

  yes_no = array_of_numbers.include?(final_number) ? "appears" : "does not appear"

  puts "The number #{final_number} #{yes_no} in #{array_of_numbers}."

end

searching()