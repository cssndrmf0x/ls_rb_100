# even_numbers.rb

# Print all even numbers from 1 to 99, inclusive, to the console, with each
# number on a separate line.

def print_evens(first, last)
  (first..last).each { |num| puts num if num.even? }
end

def print_evens_2(first, last)
  first.upto(last) { |num| puts num if num.even? }
end

print_evens(1, 99)
print_evens_2(1, 99)
