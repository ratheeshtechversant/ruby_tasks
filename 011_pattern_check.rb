# string pattern check

puts "Enter string for check pattern(eg:'awe/idet'=> yes)"
str = gets.chomp
vowel = /[aeiou]/
str_arr = []
# vwl = []
# non_vwl = []
f = 0
ff = 0
str.each_char{|x| str_arr << x}

(0...str_arr.size).step(2) do |i|
  # vwl << str_arr[i]
  if !(vowel.match(str_arr[i]))
    f = 1
  end

end
(1...str_arr.size).step(2) do |i|
  # non_vwl << str_arr[i]
  if (vowel.match(str_arr[i]))
    f = 1
  end

end

if (f == 0)&&(ff == 0)
  puts "\"#{str}\" => yes"
else
  puts "\"#{str}\" => no"
end
