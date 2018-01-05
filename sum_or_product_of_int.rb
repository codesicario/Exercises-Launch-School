def product_or_sum
  puts "Please enter an integer greater than 0:"
  integer = gets.chomp.to_i

  puts "Enter 's' to compute the sum, 'p' to compute the product."
  user_input = gets.chomp

  if user_input == 's'
    sum = (1..integer).inject(:+)
    puts "The sum of the integers between 1 and #{integer} is: #{sum}"
  elsif user_input == 'p'
    product = (1..integer).inject(:*)
    puts "The product of the integers between 1 and #{integer} is: #{product}"
  else
    puts "Invaid input.  Please enter a 'p' or 's'"
  end
end

product_or_sum
