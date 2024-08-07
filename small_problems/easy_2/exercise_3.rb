# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
# The program must compute the tip and then display both the tip and the total amount of the bill.

#Validation got ugly...

def valid_bill(bill)
  return (bill.to_i.to_s == bill ? true : false) # Not sure how to validate for whole number and float at the same time, I'd need to do this twice with current knowledge
end

def valid_percent(percent)
  return (0 < percent ? true : false)
end

def tip(bill, percent)

  tip = bill.to_f * (percent.to_f / 100)

  puts "The tip is $#{tip}"
  puts "The total is $#{tip + bill}"
end


def total()
  bill = ''
  percent = ''
  loop do
    puts "What is the bill?"
    bill = gets.chomp
  
    break if valid_bill(bill)
  end

  bill = bill.to_i

  loop do
    puts "What is the tip percentage?"
    percent = gets.chomp.to_i

    break if valid_percent(percent)
  end

  tip(bill, percent)
end

total()




