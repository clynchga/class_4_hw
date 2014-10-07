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

