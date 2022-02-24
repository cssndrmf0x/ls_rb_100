# rock_paper_scissors.rb

VALID_CHOICES = %w(rock paper scissors lizard spock)
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
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

player_counter = 0
comp_counter = 0

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')} "
    choice = gets.chomp.downcase

    if VALID_CHOICES.include?(choice)
      break
    else
      puts "That's not a valid choice."
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts "You chose: #{choice}; Computer chose: #{computer_choice}"

  who_won = results(choice, computer_choice)
  player_counter += 1 if who_won == "You won!"
  comp_counter += 1 if who_won == "Computer won!"

  puts who_won
  puts "Your wins: #{player_counter}"
  puts "Computer wins: #{comp_counter}"

  break if player_counter == 3 || comp_counter == 3

  prompt "Do you want to play again? "
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

puts "You're the grand champion! Congrats!" if player_counter == 3
puts "The computer is the grand champion!" if comp_counter == 3

puts "Thank you for playing. Goodbye!"
