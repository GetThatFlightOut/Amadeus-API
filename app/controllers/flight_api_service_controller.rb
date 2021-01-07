require './config/environment'
require './app/service/connection'

class FlightApiServiceController < Sinatra::Base

  get '/flights' do
    response = FlightService.flights_search(params)
    status response.status
    body response.body
  end

end
