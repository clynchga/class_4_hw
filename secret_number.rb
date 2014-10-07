# Write a guessing game where the user has to guess a secret number. After every guess the 
# program tells the user whether his number was too large or too small. At the end the number
# of tries needed should be printed. The user should get three tries. 

num_guesses = 0
secret_number = rand(1..20)

while num_guesses <= 2
	puts "Guess a number between 1 and 20 "
	user_guess = gets.chomp.to_i
	if user_guess == secret_number
		puts "Just right! You win!"
		num_guesses += 1
		break
	elsif user_guess > secret_number
		puts "The number you guessed was too large"
		num_guesses += 1
	else
		puts "The number you guessed was too small"
		num_guesses += 1
	end 
end 

puts "\nGame over. Number of guesses: #{num_guesses}"