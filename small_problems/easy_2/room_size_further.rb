# room_size.rb

# Build a program that asks a user for the length and width of a room in
# meters and then displays the area of the room in both square meters and
# square feet.

# further exploration included here

SQFT_PER_SQMTR = 10.7639

def prompt(message)
  print "=> #{message}"
end

def sqft_to_sqmtrs(sqft)
  sqft / SQFT_PER_SQMTR
end

def sqft_to_sqin(sqft)
  sqft * 144
end

def sqmtrs_to_sqcentimtrs(sqmtrs)
  sqmtrs * 100 * 100
end

prompt 'Enter the length of the room in feet: '
length = gets.chomp.to_f

prompt 'Enter the width of the room in feet: '
width = gets.chomp.to_f

area_feet = (length * width)
area_in = sqft_to_sqin(area_feet).round(2)
area_meters = sqft_to_sqmtrs(area_feet).round(2)
area_centimeters = sqmtrs_to_sqcentimtrs(area_meters).round(2)

area_message = <<-MSG
The area of the room is as follows:
  => #{area_feet.round} square feet
  => #{area_in} square inches
  => #{area_meters} square meters
  => #{area_centimeters} square centimeters
MSG

puts area_message
