# teddy_age.rb

# Build a program that randomly generates and prints Teddy's age. To get the age,
# you should generate a random number between 20 and 200.

# further exploration included

print "=> Give me a name: "
name = gets.chomp.capitalize
name = 'Teddy' if name.empty?

age = rand(20..200)
puts "#{name} is #{age} years old!"
