# q2.rb

# What is the result of the last line in the code below?
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# puts value of greetings hash, which is going to be {:a=>'hi there'}
# informal_greeting was assigned to the value of key :a, and the <<
# operator modifies it in place
