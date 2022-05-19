
people = ["lijo","eldhose","roshan","alan","basil"]
friend = []
people.each do |x|
  if x.length == 4
    friend << x
  end
end
puts "peoples : #{people.to_s}"
puts "friends : #{friend.to_s}"
