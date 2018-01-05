def teddy_age(age_range)
  age = rand(age_range)
  name = gets.chomp
  if name.empty?
    name = 'Teddy'
  end
  puts "#{name} is #{age} years old"
end


puts "What is your name?"


teddy_age(1..43)
