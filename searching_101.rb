answer_arry = []

puts "Enter the 1st number:"
answer_arry << gets.chomp.to_i

puts "Enter the 2nd number:"
answer_arry << gets.chomp.to_i

puts "Enter the 3rd number:"
answer_arry << gets.chomp.to_i

puts "Enter the 4th number:"
answer_arry << gets.chomp.to_i

puts "Enter the 5th number:"
answer_arry << gets.chomp.to_i

puts "Enter the last number:"
last_answer = gets.chomp.to_i

  if answer_arry.include?(last_answer)
    puts "The number #{last_answer} appears in #{answer_arry}."
  else
    puts "The number #{last_answer} does not appear in #{answer_arry}."
  end
