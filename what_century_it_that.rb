def century(year)
  century_year = ""
  if year == 10
    century_year = 1
  elsif year.to_s.end_with?("0")
    century_year = year / 100
  else
    century_year = (year / 100) + 1
  end

  if century_year.to_s.end_with?("11", "12", "13")
    puts "#{century_year}th"
  elsif century_year.to_s.end_with?("1")
    puts "#{century_year}st"
  elsif century_year.to_s.end_with?("2")
    puts "#{century_year}nd"
  elsif century_year.to_s.end_with?("3")
    puts "#{century_year}rd"
  else
    puts "#{century_year}th"
  end
end


century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
century(10)



#LS solution
def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end
