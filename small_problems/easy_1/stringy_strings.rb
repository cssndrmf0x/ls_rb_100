# stringy_strings.rb

# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1. The length of the
# string should match the given integer.

# includes further exploration

def stringy(number, start = 1)
  num_string = ''
  if start == 1
    number.times do |i|
      num_string << '1' if i.even?
      num_string << '0' if i.odd?
    end
  else
    number.times do |i|
      num_string << '1' if i.odd?
      num_string << '0' if i.even?
    end
  end

  num_string
end

# LS Solution here
# actually devastated that I didn't think of this first - I love the ternary op.

# def stringy(size)
#   numbers = []

#   size.times do |index|
#     number = index.even? ? 1 : 0
#     numbers << number
#   end

#   numbers.join
# end

puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
