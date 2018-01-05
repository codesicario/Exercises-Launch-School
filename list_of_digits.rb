def digit_list(num)
  num.to_s.chars.map { |e| e.to_i } # (&:to_i) is another option
end

p digit_list(12345)
p digit_list(3)
p digit_list(4567)
