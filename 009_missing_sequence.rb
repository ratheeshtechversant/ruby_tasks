
# series = [2,4,6,10]
# series = [30,25,20,10]
series = [10,17,24,38]
len = series.size
# puts len
diff = []
missing = 0
f = 0
for i in (0..len-2)
  d = series[i+1] - series[i]
  diff << d
  if d < 0
    f = 1
  end
end
x = diff[0]
for i in (0..len-2)
  d = series[i+1] - series[i]
  if d != x
    missing = series[i] + x
  end
end

puts series.to_s
puts "missing element : #{missing}"
