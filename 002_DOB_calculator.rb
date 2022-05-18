require "date"
puts "Please enter age"
age = gets.to_i
yob = (Date.today).year-age
puts "YOB : #{yob}"
