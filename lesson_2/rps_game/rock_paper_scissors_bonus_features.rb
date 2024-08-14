# A Simple Rock-Paper-Scissors Game
VALID_CHOICES = %w[rock paper scissors lizard spock]

def prompt(message)
  puts ">> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'spock' && second == 'rock')
end

def score(winner)
  winner + 1
end

player_tally = 0
computer_tally = 0

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won that round!')
  elsif win?(computer, player)
    prompt('Computer won that round!')
  else
    prompt('That round was a tie!')
  end
end

loop do
  while player_tally < 3 && computer_tally < 3
    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')} (You only need to type the first 2 letters)")
      response = gets.chomp.downcase
      if response.size > 1
        choice = VALID_CHOICES.select { |word| word.start_with?(response) }
        choice = choice[0] if VALID_CHOICES.include?(choice[0])
        break
      end

      prompt("That's not a valid choice.")
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose #{choice}; Computer chose #{computer_choice}")

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      player_tally = score(player_tally)
    elsif win?(computer_choice, choice)
      computer_tally = score(computer_tally)
    end

    score_prompt = <<-MSG
    The score is now:
        Player: #{player_tally}
        Computer: #{computer_tally}
    MSG
    prompt(score_prompt)
  end

  if computer_tally > player_tally
    prompt('You fought hard, but lost.')
  elsif player_tally > computer_tally
    prompt('Well done! You won!')
  end

  prompt('Do you want to play again? yes / no')
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

prompt('Thank you for playing! Good bye!')
