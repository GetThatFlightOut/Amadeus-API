require './app/controllers/flight_api_service_controller'

class FlightService
  def self.conn
    Faraday.new(url: 'https://api.skypicker.com') do |req|
      req.params[:apikey] = ENV['FLIGHT_API_KEY']
      req.params[:max_stopovers] = 0
      req.params[:flight_type] = 'round'
      req.params[:one_for_city] = 1
      req.params[:partner_market] = 'us'
      req.params[:curr] = 'USD'
      req.params[:sort] = 'price'
      req.params[:ret_from_diff_airport] = 0
      req.params[:partner] = 'picky'
    end
  end

  def self.flights_search(params)
    conn.get("/flights") do |req|
      params.each do |key,value|
        req.params[key] = value
      end
    end
  end
end
