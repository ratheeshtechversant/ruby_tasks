
def likes(key,value)
  x = value
  ln = x.size
  if ln == 0
    puts "must be \"no one likes #{key}\""
  elsif ln == 1
    puts "must be \"#{x[0]} likes #{key}\""
  elsif ln == 2
    puts "must be \"#{x[0]} and #{x[1]} like #{key}\""
  elsif ln == 3
    puts "must be \"#{x[0]}, #{x[1]} and #{x[2]} like #{key}\""
  elsif ln > 3
    puts "must be \"#{x[0]}, #{x[1]} and #{ln-2} others like #{key}\""
  end
end


# item1 = ["Peter","jacob","alex","max","mark"]
# likes(item1)
phones = {apple:["Peter","jacob","alex","max","mark"],samsung:["Peter","jacob","alex"],mi:["max"],oppo:[],vivo:["peter","mark"]}

phones.each do |key,value|
  likes(key,value)
end
