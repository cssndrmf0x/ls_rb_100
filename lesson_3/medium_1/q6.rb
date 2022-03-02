# q6.rb

# What is the output of the following code?
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# 34 is output - numbers are constants, so you can't modify them in
# place, and the assignment operator is not destructive & doesn't
# carry over outside of method
