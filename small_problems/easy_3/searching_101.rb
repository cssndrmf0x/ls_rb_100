# searching_101.rb

# Write a program that solicits 6 numbers from the user, then
# prints a message that describes whether or not the 6th number
# appears amongst the first 5 numbers.

ORDINAL_NUMS = %w[1st 2nd 3rd 4th 5th]

def prompt(message)
  print "=> #{message}"
end

def valid_num?(number_str)
  number_str == number_str.to_i.to_s
end

numbers = []

5.times do |iteration|
  num_entry = 0
  loop do
    prompt "Enter the #{ORDINAL_NUMS[iteration]} number: "
    num_entry = gets.chomp

    break if valid_num?(num_entry)

    puts "That wasn't a valid number. Try again."
  end

  numbers << num_entry.to_i
end

last_num = 0
loop do
  prompt 'Enter the last number: '
  last_num = gets.chomp

  break if valid_num?(last_num)

  puts "That wasn't a valid number. Try again."
end

if numbers.include?(last_num.to_i)
  puts "The number #{last_num} appears in #{numbers}."
else
  puts "The number #{last_num} does not appear in #{numbers}."
end
