# Write a method that will take a short line of text, and print it within a box.

def box_line_1(string)
  line_1 = '++'
  (string.size + 2).times { line_1.insert(1, '-') }
  return line_1
end

def box_line_2(string)
  line_2 = '||'
  (string.size + 2).times { line_2.insert(1, ' ') }
  return line_2
end

def box_line_3(string)
  line_3 = "| #{string} |"
end


def print_in_box(string)
 puts box_line_1(string)
 puts box_line_2(string)
 puts box_line_3(string)
 puts box_line_2(string) # Line 4 is the same as line 2
 puts box_line_1(string) # Line 5 is the same as line 1
end
  

print_in_box('To boldly go where no one has gone before.')

print_in_box('Hello')


# example: 
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+