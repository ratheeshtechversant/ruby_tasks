def filter(arr)
  output = []
  arr.each do |x|
    if x.class == Integer
      output << x
    end
  end
  return output
end

# arr1 = [1,"2","3",4]
arr1 = [1,"2",5,"3",4]

output = filter(arr1)
puts "input : #{arr1.to_s} output : #{output.to_s}"
