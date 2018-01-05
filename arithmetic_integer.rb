def prompt(message)
  puts "==> #{message}"
end

prompt("Welcome to the arithmetic integer exercise.  When prompted please enter a positive integer greater than zero.")

prompt("Enter the first number:")
first_number = gets.chomp.to_f

second_number = ''
loop do
  prompt("Enter the second number:")
  second_number = gets.chomp.to_f
    if second_number <= 0
      prompt("That is an invalid entry.  Please enter a positive integer greater than zero.")
    else
      break
    end
end

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number ** second_number}")
