require "uri"

def domain_extract(url)
  ary = URI.parse(url)
  
  domain_name =  (((ary.host).delete_suffix(".com")).delete_suffix(".in")).delete_prefix("www.")
  return domain_name
end
# url1 = "https://stackoverflow.in/questions/44113335/extract-domain-from-url-in-python"
# url2 = "http://www.zombie-bites.com"
# url3 = "https://www.cnet.com"
puts "enter url"
url = gets.chomp
puts "domain_name(\"#{url}\") == #{domain_extract(url)}"
