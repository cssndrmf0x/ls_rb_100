# q6.rb

# How could the following method be simplified without changing its 
# return value?
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# transformed to:
def color_valid(color)
  ( color == "blue" || color == "green" )
end
