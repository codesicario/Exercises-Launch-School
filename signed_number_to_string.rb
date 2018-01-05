DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(num)
  if num > 0
    integer_to_string(num).prepend('+')
  elsif num < 0
    integer_to_string(num.abs).prepend('-')
  else
    integer_to_string(num)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'


#LS solution
def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end


#Further exploration Maddie's solution
def signed_integer_to_string(number)
  return '0' if number == 0
  sym = number < 0 ? '-' : '+'
  integer_to_string(number.abs).prepend(sym)
end
