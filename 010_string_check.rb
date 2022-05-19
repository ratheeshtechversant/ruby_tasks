
def str_check(str)
  x_count = 0
  o_count = 0
  x_count = (str.split(//)).count("x")
  o_count = (str.split(//)).count("o")
  # str.each_char do |x|
  #   if x == "x"
  #     x_count +=1
  #   end
  #   if x == "o"
  #     o_count +=1
  #   end
  # end
  # if x_count == 0 && o_count == 0
  #   return "'x' and 'o' not present"
  if x_count == o_count
    return true
  else
    return false
  end
end

puts "Enter a string"
str = gets
f = str_check(str)
puts f
