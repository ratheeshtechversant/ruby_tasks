
puts "Enter number"
num = gets.to_i
puts "Multiplication table of #{num}."

for i in (1..10)
  x = num * i
  puts "#{i} x #{num} = #{x}"
end
