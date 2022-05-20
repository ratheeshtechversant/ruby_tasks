# in([""Begin on Road A"",""Right on Road B"",""Right on Road C"",""Left on Road D""])
# out ['Begin on Road D', 'Right on Road C', 'Left on Road B', 'Left on Road A']
# in(['Begin on Lua Pkwy', 'Right on Sixth Alley', 'Right on 1st Cr'])
# out  ['Begin on 1st Cr', 'Left on Sixth Alley', 'Left on Lua Pkwy']"

def direction_rev(input)
  len = input.size
  arr_places = []
  arr_direction = []
  output = []
  input.each do |x|
    #  split and strore string into arr_places and arr_direction
    temp = x.split()
    temp_str = temp[-2]+" "+temp[-1]
    arr_places << temp_str
    arr_direction << temp[0]
  end
  arr_places = arr_places.reverse()
  temp_dir = arr_direction.shift

  arr_direction = arr_direction.reverse()
  for i in (0...arr_direction.size)
    if arr_direction[i] == "Right"
      arr_direction[i] = "Left"
    elsif arr_direction[i] == "Left"
      arr_direction[i] = "Right"
    end
  end
  arr_direction.unshift(temp_dir)

  for i in (0...len)
    _str = "#{arr_direction[i]} on #{arr_places[i]}"
    output << _str
  end
  return output
  # puts arr_places.to_s
  # puts arr_direction.to_s
end

input = ['Begin on Lua Pkwy', 'Right on Sixth Alley', 'Right on 1st Cr']
# input = ["Begin on Road A","Right on Road B","Right on Road C","Left on Road D"]
puts "direction : #{input}"
puts "return direction #{direction_rev(input)}"
