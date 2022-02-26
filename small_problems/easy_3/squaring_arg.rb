# squaring_arg.rb

# Using the multiply method from the "Multiplying Two Numbers" problem,
# write a method that computes the square of its argument (the square is
# the result of multiplying a number by itself).

def multiply(num1, num2)
  num1 * num2
end

def power(number, power = 2)
  powered_value = multiply(number, number) # squared

  while power > 2
    power -= 1
    powered_value = multiply(powered_value, number)
  end

  return powered_value
end

puts power(5) == 25
puts power(-8) == 64
