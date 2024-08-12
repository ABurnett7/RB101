# A calculator to determine the monthly payment on a loan with monthly compounding interest such as a home or auto loan
def prompt(message)
  puts ">> #{message}"
end

def valid_number(number)
  number.to_i.to_s == number || number.to_f.to_s == number
end

def valid_interest(interest)
  (0.001..0.25).include?(interest.to_f / 100)
end

def valid_time(time)
  (time == 'm' || 'a' ? true : false)
end

loan_amount = nil
interest = nil
loan_duration_in_months = nil
interest_time_occurence = nil

loop do
  prompt('Enter the amount owed.')
  loan_amount = gets.chomp

  break if valid_number(loan_amount)

  prompt('Sorry, invalid loan amount')

end

loop do
  prompt("How much time is left on the loan in months")
  loan_duration_in_months = gets.chomp

  break if valid_number(loan_duration_in_months)

  prompt("Sorry, something isn't right, please try again")

end

loop do
  prompt('Enter the interest rate.  Do not divide by 100.  (Enter 1 for 1% not .01)')
  interest = gets.chomp

  if valid_interest(interest) && valid_number(interest)
    interest = interest.to_f / 100
    break
  else
    prompt("Sorry, that doesn't seem right, try again.")
  end
end

loop do
  prompt('Is that (m)onthly or (a)nnually?')
  interest_time_occurence = gets.chomp.downcase

  break if valid_time(interest_time_occurence)

  prompt("You must choose a valid option ('m' or 'a')")

end

if interest_time_occurence == 'a'
  monthly_interest_rate = interest / 12
else
  monthly_interest_rate = interest
end

# Calculating the monthly payment.
monthly_payment = loan_amount.to_f * (monthly_interest_rate.to_f / (1 - (1 + monthly_interest_rate.to_f)**(-loan_duration_in_months.to_i)))

prompt("Your monthly payment will be #{monthly_payment.round(2)}.  This was calcuated using the info you provided:
\n    1. Loan amount: #{loan_amount}
\n    2. Monthly interest rate: #{monthly_interest_rate}%
\n    3. Months left on loan #{loan_duration_in_months}")
