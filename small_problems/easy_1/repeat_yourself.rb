# repeat_yourself.rb

# Write a method that takes two arguments, a string and a positive integer, 
# and prints the string as many times as the integer indicates.

def repeat(string, num_times)
  num_times.times { puts string }
end

repeat('Hello', 3)
