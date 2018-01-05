STR_HASH = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
}

def string_to_integer(str)
digits = str.chars.map { |char| STR_HASH[char]  }

value = 0
digits.each { |digit| value = 10 * value + digit }
value
end

def string_to_signed_integer(string)
  new_string = string[0]
  string = string[1..-1] if string[0] == '-' || string[0] == '+'
  string_to_integer(string) * (new_string == '-' ? -1 : 1)
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
