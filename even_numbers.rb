def even_numbers(number_range)
  number_range.select do |num|
    if num % 2 == 0
      puts num
    end
  end
end

even_numbers(1..99)
