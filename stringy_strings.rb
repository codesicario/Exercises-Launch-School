def stringy(number, opt_number = 1)
  binary_string = []
  counter = 0

  loop do
    break if counter == number

    if counter % 2 == 0
      binary_string.unshift("1")
    elsif
      binary_string.unshift("0")
    end

    if opt_number == 0 && counter % 2 == 0
      binary_string.unshift('0')
    elsif opt_number == 0 && counter % 2 != 0
      binary_string.unshift('1')
    end

    counter += 1
  end
  p binary_string.join.reverse
end

puts stringy(6, 6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7, 0) == '1010101' && '0101010'


#LS solution

def stringy(size, opt_size = 1)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7, 0) == '1010101'
