# q4.rb

# To drive that last one home...let's turn the tables and have the
# string show a modified output, while the array thwarts the method's
# efforts to modify the caller's version of it.
def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
# the first will be pumpkinsrutabaga but the second will return pumpkins - the method gets a copy of
# the two parameters, and the = operator will not change the variable but the << will
# modify in place
