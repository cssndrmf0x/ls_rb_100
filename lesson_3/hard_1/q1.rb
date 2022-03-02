# q1.rb

# What do you expect to happen when the greeting variable is 
# referenced in the last line of the code below?

if false
  greeting = "hello world"
end

greeting
# name error? if statement never executed so greeting never initialized

# INTERESTING! what happens is actually that greeting is nil and
# when you initialize a local variable in an if block, even if block
# isn't executed, variable is initialized to nil
