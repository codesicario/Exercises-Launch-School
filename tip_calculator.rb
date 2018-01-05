#a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

puts "Enter total bill amount:"
bill_amount = gets.chomp.to_f

puts "Enter tip percentage:"
tip_percent = gets.chomp.to_f

tip = (bill_amount * (tip_percent * 0.01)).round(2)
total = (bill_amount + tip).round(2)

puts "The tip amount is: $%.2f" % tip
puts "The total amount including tip is: $%.2f" % total
