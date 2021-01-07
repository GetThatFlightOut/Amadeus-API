class FlightService
  def self.conn
    Faraday.new(url: 'https://api.skypicker.com') do |req|
      req.params[:apikey] = ENV['FLIGHT_API_KEY']
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
