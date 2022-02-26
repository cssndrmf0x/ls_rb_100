# num_characters.rb

# Write a program that will ask a user for an input of a word or multiple
# words and give back the number of characters. Spaces should not be counted
# as a character.

def prompt(message)
  print "=> #{message}"
end

prompt 'Please enter a word or phrase: '
user_entry = gets.chomp

num_chars = 0
user_entry.each_char { |char| num_chars += 1 unless char == ' ' }

puts "There are #{num_chars} characters in \"#{user_entry}\""
