# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

(1..99).select { |i| p i if i.odd?}

1.step(to: 99, by: 2) { |value| puts value }

1.upto(99) { |i| p i if i.odd?}