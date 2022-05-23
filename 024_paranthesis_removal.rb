
def paraRemoval(str_arr)
  stack = []
  del = []
  str = ""
  for i in (0...str_arr.length)
    if str_arr[i] == "("
      stack.push(i)            # if a  left "(" is encountered then push the index to array stack
    end
    if str_arr[i] == ")"      # if a right ")" is encountered then
      if stack.empty? !=true && (str_arr[stack[-1]] == "(") #  check the stack is empty or not and str_arr[stack top] is "(" then
        stack.pop           # delete the stack top
      else
        del.push(i)    #else push the index to array del
      end
    end
  end
  stack = ((stack += del).sort).reverse    #concat stack and del to get all the indexes of invalid paramthesis
  stack.each do |x|
    str_arr.delete_at(x)   #delete invalid paranthesis from curresponding index positions
    # puts x
  end
  str_arr.each{|x| str += x}
  return str
end

# str = "()(a))(((b)z()"
str = "())()()"
# str = "(())"
# str = ")(("
# str = ")()("
str_arr = Array.new(str.split(//))

output = paraRemoval(str_arr)
puts "#{str} => #{output}"
