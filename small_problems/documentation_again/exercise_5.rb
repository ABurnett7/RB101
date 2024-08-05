# What do each of these puts statements output?

# These are the outputs I expect after looking at https://docs.ruby-lang.org/en/3.2/Array.html#method-i-fetch
a = %w(a b c d e)
puts a.fetch(7) # => error, must be from -5 to 5. 
puts a.fetch(7, 'beats me') # => 'beats me'
puts a.fetch(7) { |index| index**2 } # => 49
