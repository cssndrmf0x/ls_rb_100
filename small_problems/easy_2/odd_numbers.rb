# odd_numbers.rb

# Print all odd numbers from 1 to 99, inclusive, to the console, with
# each number on a separate line.

def print_odds(first, last)
  (first..last).each { |num| puts num if num.odd? }
end

def print_odds_2(first, last)
  first.upto(last) { |num| puts num if num.odd? }
end

print_odds(1, 99)
print_odds_2(1, 99)
