# Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.


(1..99).select { |i| p i if i.even?}

2.step(to: 99, by: 2) { |value| puts value }

2.upto(99) { |i| p i if i.even?}