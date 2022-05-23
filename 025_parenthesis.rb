def isParenthesis(c)
  if c == "(" || c == ")"
    return true
  else
    return false
  end
end
# puts isParenthesis(")")
def isValidString(str)
  count = 0
  for i in (0...str.length)
    if str[i] == "("
      count += 1
    elsif str[i] == ")"
      count -= 1
    end
    if count < 0
      return false
    end
  end
  if count == 0
    return true
  end
end
# puts isValidString("())")
def removeInvalidParenthesis(str)
  if str.empty?()
    return false
  end
  visit = []
  q = []
  output = []
  temp = ""
  found = false
  q.push(str)
  visit.push(str)

  while !(q.empty?())
    str = q[0]
    q.delete_at(0)

    if isValidString(str)
      output << str
      found = true
    end
    next if found
    for i in (0...str.length-1)
      next if !isParenthesis(str[i])
      temp = str.slice(0,i) + str.slice(i+1,str.length-1)
      if !(visit.include?(temp))
        q.push(temp)
        visit.push(temp)
      end
    end
  end
  return output
end

# str = "(a)())()"
str = ")("
output = removeInvalidParenthesis(str)
puts "#{str} => #{output.to_s}"
