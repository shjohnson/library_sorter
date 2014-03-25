# Overdue library books:
#   This project uses the checkouts.txt file.
#   The data is in the format borrower - book title - date borrowed. A book is overdue after two weeks.
#   Read in the file using File.readlines to get an array of lines, eg:
#   File.readlines("my/file/path").each do |line|
#     # do stuff
#   end
#   Output to the terminal a list of all the people who have overdue books and how many days overdue the book is.
require 'date'

IO.readlines("./checkouts.txt").each do |line|	
	date_string = line.split("-")[2]
	begin
		date = Date.parse date_string
	rescue ArgumentError
		puts "There was an invalid date given"
	end
	time_since_borrowed = (Date.today - date).to_i
	if time_since_borrowed > 14
		puts line
		puts "overdue by #{time_since_borrowed} days"
	end
end







