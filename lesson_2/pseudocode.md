# pseudocode.md

Write out pseudo-code that does the 
following:

1. a method that returns the sum of two integers

START

# Given two integers, int 1 and int 2
SET sum = int 1 + int 2
PRINT sum

END

2. a method that takes an array of strings, and returns a 
string that is all those strings concatenated together

START 

# Given an array of strings, string array
SET new string = ""
SET iterator = 1

WHILE iterator < length of string array
  new string = new string + value in string array at iterator
  
  iterator = iterator + 1

PRINT new string

END

3. a method that takes an array of integers, and returns 
a new array with every other element from the original 
array, starting with the first element. For instance:
everyOther([1,4,7,2,5]) # => [1,7,5]

START 

# Given an array of integers, int array
SET new array = []
SET iterator = 1

WHILE iterator < length of int array
  IF value in int array at iterator loc. is odd
    add value to new array
  iterator = iterator + 1
  
PRINT new array

END

4. a method that determines the index of the 3rd occurrence 
of a given character in a string. For instance, if the given 
character is 'x' and the string is 'axbxcdxex', the method 
should return 6 (the index of the 3rd 'x'). If the given 
character does not occur at least 3 times, return nil.

START 

# Given a string, test string, and a character, looking for
SET 3rd index = nil
SET num times = 0
SET iterator = 1

WHILE iterator < length of test string
  IF value of test string at index iterator == looking for
    num times = num times + 1
    
  IF num times = 3 
    3rd index = iterator
    break
  
  iterator = iterator + 1
  
PRINT 3rd index

END

5. a method that takes two arrays of numbers and returns 
the result of merging the arrays. The elements of the first 
array should become the elements at the even indexes of 
the returned array, while the elements of the second array 
should becoome the elements at the odd indexes. For instance:
merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]

START

# Given two arrays of numbers, nums 1 and nums 2
SET iterator = 1
SET new nums = []

WHILE iterator < length of nums 1
  add value of nums 1 at iterator to new nums
  add value of nums 2 at iterator to new nums
  
  iterator = iterator + 1
  
PRINT new nums

END