# tip_calc.rb

# Create a simple tip calculator. The program should prompt for a bill
# amount and a tip rate. The program must compute the tip and then display
# both the tip and the total amount of the bill.

# includes further exploration - forcing the nums to show exactly 2 nums after
# decimal, even if those numbers are 0

def prompt(message)
  print "=> #{message}"
end

prompt('Please enter your bill amount: ')
bill = gets.to_f

prompt('Please enter the percentage that you would like to tip: ')
tip_percentage = gets.to_f

tip = bill * tip_percentage / 100

puts "The tip is $#{format('%#.2f',tip)}"
puts "The total is $#{format('%#.2f',(tip + bill))}"
