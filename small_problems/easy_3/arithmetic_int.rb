# arithmetic_int.rb

# Write a program that prompts the user for two positive integers, and then
# prints the results of the following operations on those two numbers:
# addition, subtraction, product, quotient, remainder, and power. Do not worry
# about validating the input.

def prompt(message)
  print "=> #{message}"
end

puts 'Please enter only positive integers.'

prompt 'Enter the first number: '
num1 = gets.chomp.to_i

prompt 'Enter the second number: '
num2 = gets.chomp.to_i

puts "\nCalculating..."
sleep 1.5

puts <<-MSG
  \nYour results are as follows:
  #{num1} + #{num2} = #{num1 + num2}
  #{num1} - #{num2} = #{num1 - num2}
  #{num1} * #{num2} = #{num1 * num2}
  #{num1} / #{num2} = #{num1 / num2}
  #{num1} % #{num2} = #{num1 % num2}
  #{num1} ** #{num2} = #{num1**num2}
MSG
