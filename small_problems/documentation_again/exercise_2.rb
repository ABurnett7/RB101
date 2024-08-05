=begin 

require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

What will each of the 4 puts statements print?

=end

# Date.civil returns a date in the following format: YYYY-MM-DD
# When no argument is given, it will return: -4712-01-01, AKA the Julian Day. 
# When a partial argument is given, the missing month and/or date are 01.

=begin

Here are the following outputs:

puts Date.civil               =>  -4712-01-01
puts Date.civil(2016)         =>  2016-01-01
puts Date.civil(2016, 5)      =>  2016-05-01
puts Date.civil(2016, 5, 13)  =>  2016-05-13
=end
require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)
