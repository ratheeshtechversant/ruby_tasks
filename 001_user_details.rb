# user details
puts "Please enter your name."
name = gets.chomp
puts "Name : #{name}!"

puts "Please enter family name."
family_name = (gets.chomp).strip()
puts "Family name : #{family_name}!"

puts "Please enter year of birth"
yob = gets.to_i
current_yr = (Time.now).year
age = current_yr - yob
puts "Age : #{age}"

puts "Please enter your height(cm)."
height_cm = gets.to_f
height_in = (height_cm * 0.39370).round(2)
puts "Height : #{height_in}in"
