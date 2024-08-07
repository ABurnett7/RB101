# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. 
# The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

def triangle(n)
  counter = 1
  until counter > n
    puts " " * (n - counter) + "*" * counter

    counter += 1
  end
end

triangle(3)


# Try modifying your solution so it prints the triangle upside down from its current orientation

def triangle(n)
  counter = 0
  until counter > n
    puts " " * counter  + "*" * (n - counter)

    counter += 1
  end
end

triangle(3)