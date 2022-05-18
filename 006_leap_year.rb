require "date"

puts "Enter year"
year = gets.to_i
# if (year % 100 != 0 || year % 400 == 0) && year % 4 == 0
#   puts "#{year} is a leap year"
# else
#   puts "#{year} not a leap year"
# end
if Date.new(year).leap?
  puts "#{year} is a leap year"
else
  puts "#{year} not a leap year"
end
