

def reverse_sentence(string)
  string_arry = string.split
  string_arry.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
