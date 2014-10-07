# Write a program that asks the user for her name and greets her with her name

puts "Enter your name "
username = gets.chomp.capitalize
puts "Hello #{username}!"

# Change the previous name program such that only the users Jack or Jill are greeted

puts "Enter your name "
username = gets.chomp.capitalize
if username == "Jack" || username == "Jill"
	puts "Hello #{username}!"
else 
end 

# Write a program that asks the user for a number n and prints the sum of the numbers 1 to n

puts "Enter a positive integer "
n = gets.chomp.to_i
sum = 0 
iterator = 1
while iterator <= n
	sum = sum + iterator
	iterator += 1
end 
puts "The sum is #{sum}"

# Write a program that asks the user for a number n and gives him the possibility to choose between
# computing the sum and computing the product of 1,...,n

puts "Enter a positive integer "
n = gets.chomp.to_i
puts "Would you like to compute the sum or product? Enter 'sum' or 'product' "
compute_flag = gets.chomp.downcase

sum = 0
product = 1
iterator = 1

if compute_flag == "sum"
	while iterator <= n
		sum = sum + iterator
		iterator += 1
	end 
	puts "The sum is #{sum}"
elsif compute_flag == "product"
	while iterator <= n
		product = product * iterator
		iterator += 1
	end
	puts "The product is #{product}"
else
end

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

puts "\nGame over. Number of guesses: #{num_guesses}\n\n"

# Write a function that takes a list of strings and prints them, one per line, in a rectangular frame

def sparkle_magic(strings)

maxlength = 0 
strings.each do |string|
	if string.length > maxlength
		maxlength = string.length
	else 
	end
end

puts "*" * (maxlength + 4)
strings.each{|string| puts "* " + string + " "*(maxlength - string.length) + " *"}
puts "*" * (maxlength + 4)

end

# Make a program that prints the numbers from 1 to 75, but for multiples of 3 print "Bewd"
# for multiples of 5 print "Rocks" and for multiples of 3 and 5 print "BewdRocks"

n = 75
x = 1
while x <= n
	if x % 3 == 0 && x % 5 == 0 
		puts "BewdRocks"
		x += 1
	elsif x % 3 == 0 
		puts "Bewd"
		x += 1
	elsif x % 5 == 0 
		puts "Rocks"
		x += 1
	else 
		puts x
		x += 1 
	end
end 

# Make a program that reads the text file weather.dat (file containing weather data for Boston for each day of June 2013) and
# outputs the day number (column 1) with the smallest temperature spread (max temp = col 2, min temp = col 3)

data_lines = IO.readlines("/Users/clarelynch/desktop/bewd/week_4_hw/weather.dat") 

temperature_variance = []

data_lines.each do |l|
	line_entry = l.split(" ")
	temp_difference = line_entry[1].to_i - line_entry[2].to_i
	date_hash = {day: line_entry[0].to_i, variation: temp_difference} 
	temperature_variance.push(date_hash)
end

temperature_variance.delete_if{|entry| entry[:day] == 0} 

min_temp_var_day = temperature_variance.sort_by{|el| el[:variation]}[0][:day]
puts "The date with the minimum temperature spread was June #{min_temp_var_day}"