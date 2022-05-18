# flight index

class Flight
  def initialize
    @id = 0
    @flight_number = ""
    @orgin_airport = ""
    @destination_airport = ""
  end

  def read_flight  #read details
    flight = {}
    puts "Enter flight id :"
    @id = gets.to_i
    flight["id"] = @id

    puts "Enter Flight number."
    @flight_number = gets.chomp
    flight["flight_number"] = @flight_number

    puts "Enter orgin_airport"
    @orgin_airport = gets.chomp
    flight["orgin_airport"] = @orgin_airport

    puts "Enter destination_airport"
    @destination_airport = gets.chomp
    flight["destination_airport"] = @destination_airport

    return flight
  end

  def self.print_flight(flight) #display flight details
    f = flight

      puts "\n\n"
      f.each do |key,value|
        puts "#{key} : #{value}"
      end
  end

end

def read_flights
  flight = []  #block scope
  obj_f1 = Flight.new
  obj_f2 = Flight.new
  flight << obj_f1.read_flight
  flight << obj_f2.read_flight
  return flight
end

def print_flights(flight)
  f = flight
  f.each do |x|
    Flight.print_flight(x)
  end
end


# flight_1 = Flight.new
#
# f1 = flight_1.read_fligh
#
# Flight.print_flight(f1)

flight = read_flights
print_flights(flight)

# puts flight
