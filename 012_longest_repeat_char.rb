puts "Enter string"
str = (gets.chomp).downcase

str_arr = []
str.each_char{|x| str_arr << x}
uniq_char_arr = str_arr.uniq()
# puts  uniq_char_arr
max = 0
max_char = ""
for i in (0...uniq_char_arr.size)
  char_count = 0
  # for j in (0...str_arr.size)
  #   if uniq_char_arr[i] == str_arr[j]
  #     char_count += 1
  #   end
  # end
  char_count = str_arr.count(uniq_char_arr[i])
  if max < char_count
    max = char_count
    max_char = uniq_char_arr[i]
  end
end
puts "\"#{str}\" => [\"#{max_char}\",#{max}]"
