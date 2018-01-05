def odd_numbers(number_range)
  number_range.select do |num|
    if num % 2 != 0
      puts num
    end
  end
end

odd_numbers(1..99)

#alternate solution
1.upto(99) { |i| puts i if i % 2 != 0 }
