require 'date'

class Flight
  attr_reader :origin_city,
              :destination_city,
              :origin_iata,
              :destination_iata,
              :latitude,
              :longitude,
              :price,
              :departure_datetime,
              :arrival_datetime,
              :r_departure_datetime,
              :r_arrival_datetime,
              :booking_link,
              :trip_duration,
              :id

  def initialize(flight_data)
    @id = flight_data[:route][0][:flight_no]
    @origin_city = flight_data[:cityFrom]
    @destination_city = flight_data[:cityTo]
    @origin_iata = flight_data[:flyFrom]
    @destination_iata = flight_data[:flyTo]
    @latitude = flight_data[:route][0][:latTo]
    @longitude = flight_data[:route][0][:lngTo]
    @price = flight_data[:price]
    @departure_datetime = DateTime.strptime(flight_data[:dTime].to_s,'%s')
    @arrival_datetime = DateTime.strptime(flight_data[:aTime].to_s,'%s')
    @r_departure_datetime = DateTime.strptime(flight_data[:route][1][:dTime].to_s,'%s')
    @r_arrival_datetime = DateTime.strptime(flight_data[:route][1][:aTime].to_s,'%s')
    @booking_link = flight_data[:deep_link]
    @trip_duration = flight_data[:nightsInDest]
  end
end
