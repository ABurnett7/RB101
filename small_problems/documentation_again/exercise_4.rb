# How would you search this Array to find the first element whose value exceeds 8?

a = [1, 4, 8, 11, 15, 19]

# Array#bsearch seems to have the same syntax as a one-liner iteration and returns one object so I would try:

a.bsearch{ |element| element > 8}

# by putting a p in front, I could see it was finding and returning 11. 