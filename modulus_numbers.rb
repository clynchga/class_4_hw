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