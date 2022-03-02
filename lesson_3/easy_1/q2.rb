# q2.rb

# 2. Describe the difference between ! and ? in Ruby. And explain 
# what would happen in the following scenarios:

# != means not equals, ? : is ternary operator, !!<obj> turns any object 
# into bool equivalent, !<obj> turns it into opp of boolean equivalent

# - what is != and where should you use it?
# not equal, use in conditionals where you want 'x is not equal to _'

# - put ! before something, like !user_name
# if user_name was a truthy value, the ! would cause it to return false

# - put ! after something, like words.uniq!
# a convention in methods, typically used for methods that modify the caller

# - put ? before something
# - put ? after something

# - put !! before something, like !!user_name
# causes a truthy value to equal true, and vice versa for a falsy value
