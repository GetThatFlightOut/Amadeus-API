require './config/environment'
require './app/service/connection'

class FlightApiServiceController < Sinatra::Base

  get '/flights' do
    response = FlightService.flights_search(params)
    response.body
  end

end
