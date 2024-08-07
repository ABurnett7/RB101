# What does the following code print: 

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# It will print:
# 'Alice'
# 'Bob'
# Because save_name is pointing to the value name was originally pointing at, and then a new values was reassigned to name, but this doesn't affect save_name.

#What does this print out? Can you explain these results?

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# This will print:
# 'BOB'
# 'BOB'

# This is because both variables are pointing to the same value and the upcase! modified that value. 