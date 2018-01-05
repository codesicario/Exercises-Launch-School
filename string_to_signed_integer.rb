STR_HASH = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
}

def remove_prefix(string)
  string.chars.include?('-') || string.chars.include?('+')
    string = string.chars
    new_str = string.shift
    string = string.join
    string
end


def string_to_integer(str)
  remove_prefix(str)
  digits = str.chars.map { |char| STR_HASH[char]  }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end


def string_to_signed_integer(str)

  if str.chars.include?('-')
    str = remove_prefix(str)
    value = string_to_integer(str)
    value = value * -1
  elsif str.chars.include?('+')
    str = remove_prefix(str)
    string_to_integer(str)
  else
    string_to_integer(str)
  end
end




p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
