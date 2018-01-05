def sum(pos_int)
  int_arry = []

  int_arry = pos_int.to_s.chars
  int_arry.map(&:to_i).inject { |sum, x| sum + x }

end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
