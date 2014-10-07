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