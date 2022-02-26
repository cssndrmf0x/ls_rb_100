# room_size.rb

# Build a program that asks a user for the length and width of a room in
# meters and then displays the area of the room in both square meters and
# square feet.

SQFT_PER_SQMTR = 10.7639

def prompt(message)
  print "=> #{message}"
end

def sqmtrs_to_sqft(sq_meters)
  sq_meters * SQFT_PER_SQMTR
end

prompt 'Enter the length of the room in meters: '
length = gets.chomp.to_f

prompt 'Enter the width of the room in meters: '
width = gets.chomp.to_f

area_meters = (length * width).ceil(2)
area_feet = sqmtrs_to_sqft(area_meters).ceil(2)

puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)."
