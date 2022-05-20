records = [["John Daggett", "341 King Road","Plymouth MA"],
           ["Alice Ford", "22 East Broadway", "Richmond VA"],
           ["Sal Carpenter", "73 6th Street", "Boston MA"],
           ["Sal Carpenter", "73 6th Street", "Boston CA"]]

state_list = {'AZ': 'Arizona',
            'CA': 'California',
            'ID': 'Idaho',
            'IN': 'Indiana',
            'MA': 'Massachusetts',
            'OK': 'Oklahoma',
            'PA': 'Pennsylvania',
            'VA': 'Virginia'}
output = {}
for i in (0...records.size)
   state = (records[i][-1].split)[-1]
   # puts state.class
   state_list.each do |key,value|
     # puts (key.to_s).class

     if (key.to_s) == state
        output[key.to_s] = value
     end
   end
end

(output.sort).each do |key,value|
  puts "\'#{key}\' : \'#{value}\'"
end
