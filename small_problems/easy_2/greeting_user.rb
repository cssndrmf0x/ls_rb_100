# greeting_user.rb

# Write a program that will ask for user's name. The program
# will then greet the user. If the user writes "name!" then the
# computer yells back to the user.

def prompt(message)
  print "=> #{message}"
end

prompt 'What is your name? '
name = gets.chomp

if name.end_with?('!')
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end
