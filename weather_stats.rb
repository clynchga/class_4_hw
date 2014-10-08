# Make a program that reads the text file weather.dat (file containing weather data for Boston for each day of June 2013) and
# outputs the day number (column 1) with the smallest temperature spread (max temp = col 2, min temp = col 3)

data_lines = IO.readlines("weather.dat") 
# returns an array of strings, each string corresponds to one line of the data file

temperature_variance = [] # initialize an array to hold the temperature variance for each day

# take the data_lines array. for each line, split each column into individual strings, convert the second and third column to integers, and subtract
# this gives the temperature variation for each day
# store the temperature variation and day number in a new hash, and push this hash to the temperature_variance array
# NOTE: the array returned has some weird lines - the first and second have variance of 0, the last is the monthly average
data_lines.each do |l|
	line_entry = l.split(" ")
	temp_difference = line_entry[1].to_i - line_entry[2].to_i
	date_hash = {day: line_entry[0].to_i, variation: temp_difference} 
	temperature_variance.push(date_hash)
end

#remove the erroneous entries (that have a date integer equal to 0)
temperature_variance.delete_if{|entry| entry[:day] == 0} 

#puts temperature_variance

# now we have temperature_variance, which is an array of hashes
# and we want to find the minimum value associated with key :variation

#min_temp_var_day = temperature_variance.sort_by{|el| el[:variation]}[0][:day]
min_temp_var_day = temperature_variance.min_by{|el| el[:variation]}[:day]
puts "The date with the minimum temperature spread was June #{min_temp_var_day}"