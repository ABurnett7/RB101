# The Ruby Array class has several methods for removing items from the array. 
# Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1) # This will delete the integer 2 at index 1
p numbers # => = [1, 3, 4, 5]

numbers = [1, 2, 3, 4, 5]
numbers.delete(1) # This will delete the integer 1 at index 0.  
p numbers # => = [2, 3, 4, 5]

#Both mutate the caller (the array numbers)
