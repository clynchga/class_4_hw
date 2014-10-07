# swapping letters and numbers:
# given a string "6Hello4 -8World, 7 yes3" swap the case of each character
# if a letter is between two numbers (without separation), switch the places of the two numbers.
# the desired output is "4hELLO6 -8wORLD, 7 YES3"

mystring = "6Hello4 -8World, 7 yes3 3a69" 
puts mystring

string_elements = mystring.swapcase.split(" ")
# go through each string element and check if the first character is a number? the last character is a number? letter in the middle?
# if so swap the first and last character
# after that process is done, add the string elements back together
# NOTE: this works for the example but doesn't completely fulfill the requirements of the question
new_string_sections = []
string_elements.each do |el|
	n = el.length - 1
	# x = 1
	# while x <= n
		if el[0] =~ /[0-9]/ && el[n] =~ /[0-9]/ && el.length >= 3 && el[1,n-1] =~ /[a-zA-Z]/
			new = el[n] + el[1,n-1] + el[0]
			new_string_sections.push(new)
		else
			new_string_sections.push(el)
		end
	new_string_sections.push(" ")
end

puts new_string_sections.join

# look for a number followed by an alpha character & store the first instance
# 	if no instance of that, just push the entire element
# push the section that precedes that index
# is there a number that follows in the string section?
# 	if so store its index, switch the numbers based on stored indeces, and push the new section 
#   	start over at the next index number
# 	if not push the rest of the section as is

=begin
new_array = []
x = 0 
n = el.length - 1
initial = 0
while x <= n
	if el[x] =~ /[0-9]/ && el[x+1] =~ /[a-zA-Z]/
		first_num = x
		new_array.push(initial,x-initial) # push the section that precedes that index
		if 
		x += 1
	else 
		x += 1
=end

=begin

regexp 
/\d/ - A digit character (or use [0-9])
/[[:alpha:]]/ - Alphabetic character - evalutes to true for number strings too

example:

line1 = "Cats are smarter than dogs";
line2 = "Dogs also like meat";

if ( line1 =~ /Cats(.*)/ )
  puts "Line1 contains Cats"
end
if ( line2 =~ /Dogs(.*)/ )
  puts "Line2 contains  Dogs"
end

=end