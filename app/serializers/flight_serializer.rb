require 'fast_jsonapi'

class FlightSerializer
  include FastJsonapi::ObjectSerializer
  attributes :origin_city,
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
end
