def multisum(num)
  counter = 1
  sum_ary = []

  while counter <= num
    sum_ary << counter
    counter += 1
  end

  sum_ary.select! { |i| i % 3 == 0 || i % 5 == 0 }
  sum_ary.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
p multisum(2457)


#LS solution
def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end
