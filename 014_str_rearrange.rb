def scramble(str1,str2)
  str_1 = str1.split(//)
  str_2 = str2.split(//)
  str_3 = []
  for i in (0...str_2.size)
    for j in (0...str_1.size)
      if str_2[i] == str_1[j]
        str_3 << str_1.delete_at(j)
      end
      break if str_2[i] == str_1[j]
    end
  end
  if (str_2 & str_3) == str_2
    return true
  else
    return false
  end
    # puts str_3.to_s
end
puts "enter 1st string"
str1 = gets.chomp
puts "enter 2nd string"
str2 = gets.chomp

puts "scramble\(\'#{str1}\',\'#{str2}\'\) ==> #{scramble(str1,str2)}"
