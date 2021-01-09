require './config/environment'
require './app/services/flight_service'
require './app/serializers/flight_serializer'
require 'sinatra/base'

class FlightApiServiceController < Sinatra::Base

  get '/flights' do
    response = FlightService.flights_search(params)
    json = JSON.parse(response.body, symbolize_names: true)
    if response.status == 200
      flights = json[:data].map do |flight_data|
        Flight.new(flight_data)
      end
      body FlightSerializer.new(flights).to_json
    else
      body response.body
      status response.status
    end
  end

end
