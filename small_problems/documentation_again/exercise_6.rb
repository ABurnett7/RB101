# What does this code print?

5.step(to: 10, by: 3) { |value| puts value }

# From the documentation, the step method starts at itself, and goes up to the to: value supplied, every by number.
# Those integers will be provided as values assigned to the variable in the block. 
# So this will print: 
# 5
# 8