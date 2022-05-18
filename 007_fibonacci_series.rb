
puts "Enter the limit"
limit = gets.to_i
a = 0
b = 1
f = 0
 while a <= limit
   puts a
   f = a + b
   a = b
   b = f
 end
