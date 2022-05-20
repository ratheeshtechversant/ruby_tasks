
def search(str,search_word)
  out_arr = []
  reg = Regexp.new("\\A#{search_word}")
  # puts reg
  str.each do |x|
    if reg.match(x)
      out_arr << x
    end
  end
  if out_arr.empty?
    return "search another word"
  else
    return out_arr
  end
end



str = ["array","abcd","cat","dog"]
puts "enter search string"
search_word = gets.chomp
puts "#{str.to_s}"
puts "output : #{search(str,search_word)}"
