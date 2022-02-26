# consecutive_ints.rb

# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer.

VALID_CHOICES = %w[s p]

def prompt(message)
  print "=> #{message}"
end

def valid_choice?(choice)
  VALID_CHOICES.include?(choice)
end

puts "This program will calculate either the sum or the product of all " \
     "integers between 1 and the integer you enter.\n\n"

prompt 'Please enter an integer greater than 0: '
up_to_nbr = gets.chomp.to_i

choice = ''
loop do
  prompt "Enter 's' to compute the sum, 'p' to compute the product: "
  choice = gets.chomp.downcase

  break if valid_choice?(choice)

  puts "That was an invalid choice. Let's try again."
end

case choice
when 's'
  final_val = (1..up_to_nbr).each.reduce(:+)
  puts "The sum of the integers between 1 and #{up_to_nbr} is #{final_val}."
when 'p'
  final_val = (1..up_to_nbr).each.reduce(:*)
  puts "The product of the integers between 1 and #{up_to_nbr} is #{final_val}."
end
