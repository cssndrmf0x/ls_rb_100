# q5.rb

# 5. Programmatically determine if 42 lies between 10 and 100.

value = 42
present = false

(10..100).each { |n| n == value ? present = true : next }

puts "#{value} is #{ present ? 'included' : 'not included' } in the range 10 to 100."
