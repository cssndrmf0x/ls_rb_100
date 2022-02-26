# rock_paper_scissors.rb

VALID_CHOICES = { r: 'rock',
                  p: 'paper',
                  s: 'scissors',
                  l: 'lizard',
                  sp: 'spock' }

HOW_TO_WIN = { rock: %w(scissors lizard),
               paper: %w(rock spock),
               scissors: %w(paper lizard),
               lizard: %w(paper spock),
               spock: %w(scissors rock) }

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  HOW_TO_WIN[first.to_sym].include?(second)
end

def results(player, computer)
  if win?(player, computer)
    'You won!'
  elsif win?(computer, player)
    'Computer won!'
  else
    "It's a tie!"
  end
end

puts "Welcome to Rock, Paper, Scissors, Lizard, Spock!"
puts "\n"

puts 'The rules go like this: Scissors cuts Paper covers Rock crushes Lizard ',
     'poisons Spock smashes Scissors decapitates Lizard eats Paper disproves ',
     "Spock vaporizes Rock crushes Scissors."
puts "\n"
sleep(3)

puts '... Got all that?'
sleep(1)

puts "Let's play!"
puts "\n"

player_counter = 0
comp_counter = 0

loop do
  choice = ''
  loop do
    prompt <<-MSG
    Choose one of the following options:
      - rock (enter 'r')
      - paper (enter 'p')
      - scissors (enter 's')
      - lizard (enter 'l')
      - spock (enter 'sp')
    MSG
    choice = gets.chomp.downcase.to_sym

    if VALID_CHOICES.include?(choice)
      break
    else
      puts "\n"
      puts "That's not a valid choice."
    end
  end

  computer_choice = VALID_CHOICES.keys.sample

  puts "\n"
  puts "You chose: #{VALID_CHOICES[choice]}; " \
       "Computer chose: #{VALID_CHOICES[computer_choice]}"
  puts "\n"

  who_won = results(VALID_CHOICES[choice], VALID_CHOICES[computer_choice])
  player_counter += 1 if who_won == 'You won!'
  comp_counter += 1 if who_won == 'Computer won!'

  puts who_won
  puts "\n"

  puts "Your wins: #{player_counter}"
  puts "Computer wins: #{comp_counter}"
  puts "\n"

  break if player_counter == 3 || comp_counter == 3

  prompt "Do you want to play again? "
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')

  puts "\n"
end

puts "You're the grand champion! Congrats!" if player_counter == 3
puts "The computer is the grand champion!" if comp_counter == 3
puts "\n"

puts "Thank you for playing. Goodbye!"
