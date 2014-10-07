# Write a function that takes a list of strings and prints them, one per line, in a rectangular frame

mystrings = ["Hello","World","in","a","frame"]
anotherstring = ["To","be","or","not","to","be;","that","is","the","question"]

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

sparkle_magic(mystrings)
sparkle_magic(anotherstring)

# find the longest string length in the array
# print that number of stars plus four
# for each string in the array
# 	print a star, the string, and spaces equal to max string lenth minus that string length, plus an end star
# print another row of stars at the end