def palindrome?(string)
  all_strings = string.to_s
  all_strings.eql?(all_strings.chars.reverse.join)
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?(['chris']) == false
