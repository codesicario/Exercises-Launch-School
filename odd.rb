def odd_number(num)
  if num % 2 == 0
    puts "false"
  else
    puts "true"
  end
end

puts odd_number(2)
puts odd_number(5)
puts odd_number(0)


def is_odd?(num)
  if num.remainder(2) == 1
    puts "true"
  else
    puts "false"
  end
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(0)
