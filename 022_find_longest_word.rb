
def longest(str)
  arr = str.split()
  max = 0
  longest = ""
  arr.each do |x|
    len = (x.delete_suffix(",")).size()
    if len > max
      max = len
      longest = x.delete_suffix(",")
    end
  end
  return longest
end

puts "Enter a sentence"
str = gets
puts "Sentence : #{str}"
puts "Longest world : #{longest(str)}"
# puts str.delete_suffix(",")
