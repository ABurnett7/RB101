# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# 1. what is != and where should you use it?
# != is how to write the conditional 'does not equal', it is the opposite of ==.  

# 2. put ! before something, like !user_name
# When we put ! before something like user name, Ruby will evaluate that ojbect's truthiness and then return the opposite.  
#     As long as user_name is not false or nil, than !user_name will return false. If false or nil were assigned to user_name, than !user_name would return true

user_name = 'a'
p !user_name # => false

user_name = nil
p !user_name # => true

# 3. put ! after something, like words.uniq!

# This can often, but not always, be used to indicate a a destructive method.
# Something like words.uniq would return an array that has been assigned with no repeating elements, but leave the original array unchanged.
# By adding the bang (!) to uniq, it will return the new array and mutate the array words in place. 

words = ['hi', 'hello', 'hello', 'goodbye']
p words.uniq # => ['hi', 'hello', 'goodbye']
p words # => ['hi', 'hello', 'hello', 'goodbye']
words.uniq!
p words # => ['hi', 'hello', 'goodbye']

# 4. put ? before something
# not quite sure what this question is asking.  I can't think of a method off the top of my head that starts with '?'
# Solution says: ? : is the ternary operator for if...else 

# 5. put ? after something
# Putting a ? after a method often indicates a query that will return true or false.  
'Hello'.start_with?('H') # => true
[1, 2, 3, 4].include?(5) # = false

# 6. put !! before something, like !!user_name
# Putting !! before something will return it's truthiness value as true or false.  
# The first ! as demonstrated above will evaluate the truthiness of an object and return 'not that', or the opposite.  
# The second !! will return 'not that' of the opposite.

!!nil # => false (nil is falsey)
user_name = 'a' # 'a' is truthy
!!'a' # => true