# q2.rb

# The result of the following statement will be an error:
# puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?

# You can't concatenate an integer and a string, there is not 
# implicit type conversion

# 1. use string interpolation #{42 + 2}
# 2. convert 42 into a string and then concatenate - (40 + 2).to_s

puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 2 is " + (40 + 2).to_s
