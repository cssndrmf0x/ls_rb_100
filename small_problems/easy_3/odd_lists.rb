# odd_lists.rb

# Write a method that returns an Array that contains every other element of an
# Array that is passed in as an argument. The values in the returned list should
# be those values that are in the 1st, 3rd, 5th, and so on elements of the argument
# Array.

def oddities(array)
  odd_array = []
  array.each_index { |index| odd_array << array[index] if index.even? }
  
  odd_array
end

def even_values(array)
  even_array = []
  array.each_index { |index| even_array << array[index] if index.odd? }
  
  even_array
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

puts even_values([2, 3, 4, 5, 6]) == [3, 5]
puts even_values([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
puts even_values(['abc', 'def']) == ['def']
puts even_values([123]) == []
puts even_values([]) == []