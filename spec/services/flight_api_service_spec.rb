require 'spec_helper'

def app
  FlightApiServiceController
end

describe 'I can connect and recieve a response from the flight API' do
  it "I get JSON data back", :vcr do
    get '/flights'
    expect(last_response.body).to be_a(Hash)
  end
end
