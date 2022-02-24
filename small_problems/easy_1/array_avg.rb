# array_avg.rb

# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array. The array will never be empty
# and the numbers will always be positive integers. Your result should also be
# an integer.

# includes further exploration - one of the operands of div op must be converted
# to float to force float division

def average(numbers)
  total = 0
  numbers.each { |num| total += num }

  total / numbers.size.to_f
end

puts average([1, 6]) == 3.5
puts average([1, 5, 87, 45, 8, 8]) == 25.666666666666668
puts average([9, 47, 23, 95, 16, 52]) == 40.333333333333336
