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
    f.each do |x|
      puts "\n\n"
      x.each do |key,value|
        puts "#{key} : #{value}"
      end

    end
  end


end



flight = []
flight_1 = Flight.new
flight_2 = Flight.new

flight << flight_1.read_flight
flight << flight_2.read_flight

Flight.print_flight(flight)

# puts flight
