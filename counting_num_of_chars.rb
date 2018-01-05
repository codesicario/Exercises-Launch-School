def prompt(message)
  puts "==> #{message}"
end

prompt("Welcome to the character counting program.  When prompted enter a word or sentence.  Hit enter to output the number of characters.")

prompt("Please enter your word or phrase:")
user_input = gets.chomp

num_chars = user_input.delete(' ').length

prompt("There are #{num_chars} characters in: \"#{user_input}\".")
