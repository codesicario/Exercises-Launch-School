#program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters.

SQFT_TO_SQINCHES = 144
SQFT_TO_SQCNT = 929.0304

puts "Enter length in feet:"
length = gets.chomp.to_f

puts "Enter width in feet:"
width = gets.chomp.to_f

sqft = (length * width).round(2)
sqinches = (sqft * SQFT_TO_SQINCHES).round(2)
sqcnt = (sqft * SQFT_TO_SQCNT).round(2)

puts "The area of the room is #{sqft} square feet (#{sqinches} square inches)(#{sqcnt} square centimeters)"
