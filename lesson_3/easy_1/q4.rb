# q4.rb

# 4. The Ruby Array class has several methods for removing items 
# from the array. Two of them have very similar names. Let's see how
# they differ:
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)
numbers.delete(1)

# delete_at deletes at index one, so it deletes the value 2. delete deletes
# the value 1, so it deletes the value at index 0.
