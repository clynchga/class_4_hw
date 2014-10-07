# swapping letters and numbers:
# given a string "6Hello4 -8World, 7 yes3" swap the case of each character
# then if a letter is in between two numbers (without separation), switch the places of the numbers
# the desired output is "4hELLO6 -8wORLD, 7 YES3"

mystring = "6Hello4 -8World, 7 yes3" 

mystr2 = mystring.swapcase

string_elements = mystr2.split(" ")
# go through each string element and check if the first character is a number? the last character is a number? 
# if so swap them
# after that process is done, add the string elements back together

string_numbers = ["0","1","2","3","4","5","6","7","8","9"]

puts string_elements
puts "\r"

string_elements.each do |el|
	n = el.length - 1
	if string_numbers.include?(el[0]) && string_numbers.include?(el[n])
		# swap the first and last character
		# need to add a check for a letter
	else
	end
end