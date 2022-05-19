
def phone_number(num)
  x = num
  regx_ph = /([0-9])[0-9]-[0-9]/
  s1 = ""
  s2 = ""
  s3 = ""
  x[0..2].each{|y| s1 += y.to_s} #Array slicing
  x[3..5].each{|y| s2 += y.to_s}
  x[6..9].each{|y| s3 += y.to_s}
  phone = "\(#{s1}\)#{s2}-#{s3}"
  if regx_ph.match(phone) #pattern check
    return phone
  end
end

num = [1,2,3,1,1,1,1,1,1,1]

if num.size == 10
  # puts  "create phone number\(#{num.to_s}\)\# => \"#{phone_number(num)}\"" #function call
  puts phone_number(num)
end

# output
# (123)111-1111
