# how_many.rb

# Write a method that counts the number of occurrences of each element in a
# given array. The words in the array are case-sensitive: 'suv' != 'SUV'.
# Once counted, print each element alongside the number of occurrences.

# further exploration / case insensitivity included

def list_occurrences(list)
  list_elements = {}

  list.each do |item|
    if list_elements.include?(item.downcase)
      list_elements[item.downcase] += 1
    else
      list_elements[item.downcase] = 1
    end
  end

  list_elements.each do |key, value|
    puts "#{key} => #{value}"
  end
end

# LS Solution here
# def count_occurrences(array)
#   occurrences = {}

#   array.uniq.each do |element|
#     occurrences[element] = array.count(element)
#   end

#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end

vehicles = [
  'car', 'CAr', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motoRCycle', 'car', 'truck'
]

list_occurrences(vehicles)
