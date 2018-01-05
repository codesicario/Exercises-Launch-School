#a program that displays when the user will retire and how many years she has to work till retirement.

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year

years_remaining = retirement_age - age
retirement_year = current_year + years_remaining

puts "It's #{current_year}.  You will retire in #{retirement_year}."
puts "Don't worry you only have #{years_remaining} years of work to go."
