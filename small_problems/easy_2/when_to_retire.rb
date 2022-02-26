# when_to_retire.rb

# Build a program that displays when the user will retire and
# how many years she has to work till retirement.

CURRENT_YEAR = Time.now.year

def prompt(message)
  print "=> #{message}"
end

prompt 'What is your age? '
age = gets.chomp.to_i

prompt 'At what age would you like to retire? '
retirement_age = gets.chomp.to_i

years_left = retirement_age - age

puts "It's #{CURRENT_YEAR}. You will retire in #{CURRENT_YEAR + years_left}."
puts "You only have #{years_left} years of work to go!"
