# What will this code print? 
# Answer using documentation

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

=begin 
The answer looks to be in the Default Positional Arguments section found at: https://docs.ruby-lang.org/en/3.2/syntax/calling_methods_rdoc.html#label-Default+Positional+Arguments

That says, when the method defines default methods, Ruby will fill in the missing arguments in-order.

Based on the last example, it looks like in-order should probably be in-place.

The output should be:

4, 5, 3, 6 (This ended up being correct)
=end
