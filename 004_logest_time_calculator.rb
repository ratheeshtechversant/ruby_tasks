
# longest Time
def longest_time(h,m,s)
  hr = (h * 60)* 60
  mn = m * 60
  sc = s

  if hr > mn && hr > sc
    puts "#{h}hr is Greater"
  elsif mn > hr && mn > sc
    puts "#{m}min is Greater"
  else
    puts "#{s}sc is Greater"
  end
end

# user inputs
puts "Enter hour"
h = gets.to_i

puts "Enter minutes"
m = gets.to_i

puts "Enter seconds"
s = gets.to_i

longest_time(h,m,s)
