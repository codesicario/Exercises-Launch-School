def ascii_value(string)
  string.chars.map { |chr| chr.ord  }.reduce(0, :+)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0


#LS solution
def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end


ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0
