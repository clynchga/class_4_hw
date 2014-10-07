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