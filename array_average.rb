def average(int_arry)
  arry_sum = 0

  arry_sum = int_arry.map.inject { |sum, x| sum + x }
  arry_sum.to_f / int_arry.size

end

puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40
