# program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

SQMETERS_TO_SQFEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

def room_squared(length, width)
  sq_mtr = (length * width).round(2)
  sq_ft = (sq_mtr * SQMETERS_TO_SQFEET).round(2)
  puts "The area of the room is #{sq_mtr} square meters or #{sq_ft} square feet."
end

room_squared(length, width)
