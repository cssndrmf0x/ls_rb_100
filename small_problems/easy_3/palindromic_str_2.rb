# palindromic_str_2.rb

# Write another method that returns true if the string passed as an argument is a
# palindrome, false otherwise. This time, however, your method should be
# case-insensitive, and it should ignore all non-alphanumeric characters. If you
# wish, you may simplify things by calling the palindrome? method you wrote in the
# previous exercise.

def palindrome?(testing_val)
  testing_val == testing_val.reverse
end

def real_palindrome?(string)
  palindrome?(string.downcase.delete('^a-z0-9'))
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
