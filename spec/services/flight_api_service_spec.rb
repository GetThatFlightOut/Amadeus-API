require 'spec_helper'
require 'json'
require 'rspec'

def app
  FlightApiServiceController
end

describe 'I can connect and recieve a response from the flight API' do
  it "I get JSON data back" do
    params = {
              :fly_from => 'DEN',
              :date_from => '30/01/2021',
              :date_to => '30/01/2021',
              :nights_in_dst_from => 5,
              :nights_in_dst_to => 5,
              :flight_type => 'round',
              :one_for_city => 1,
              :partner_market => 'us',
              :curr => 'USD',
              :sort => 'price',
              :ret_from_diff_airport => 0,
              :partner => 'picky',
              :limit => 20
              }
    get '/flights', params
    expect(last_response.status).to eq(200)
    expect(last_response.body).to be_a(String)
    response = JSON.parse(last_response.body, symbolize_names: true)
    expect(response).to be_an(Hash)
    expect(response[:data]).to be_an(Array)
    expect(response[:data][0]).to be_an(Hash)
    expect(response[:data].size).to eq(20)
    expect(response[:data][0][:attributes][:price]).to be_an(Integer)
    expect(response[:data][0][:attributes][:deep_link]).to_not eq('')
    expect(response[:data][0][:attributes][:destination_city]).to be_an(String)
    expect(response[:data][0][:attributes][:latitude]).to be_an(Float)
    expect(response[:data][0][:attributes][:longitude]).to be_an(Float)
    expect(response[:data][0][:attributes][:origin_city]).to eq('Denver')
  end

  describe 'If I send in incorrect parameters,' do
    it 'I will get an error code for unknown airport' do
      params = {
                :fly_from => 'ZZZ',
                :date_from => '30/01/2021',
                :date_to => '30/01/2021',
                :nights_in_dst_from => 5,
                :nights_in_dst_to => 5,
                :flight_type => 'round',
                :one_for_city => 1,
                :partner_market => 'us',
                :curr => 'USD',
                :sort => 'price',
                :ret_from_diff_airport => 0,
                :partner => 'picky',
                :limit => 20
                }
      get '/flights', params

      expect(last_response.status).to eq(422)
      expect(last_response.body).to include("Not recognized location: `ZZZ`")
    end

    it 'I will get an error code for bad date' do
      params = {
                :fly_from => 'DEN',
                :date_from => '35/01/2021',
                :date_to => '30/01/2021',
                :nights_in_dst_from => 5,
                :nights_in_dst_to => 5,
                :flight_type => 'round',
                :one_for_city => 1,
                :partner_market => 'us',
                :curr => 'USD',
                :sort => 'price',
                :ret_from_diff_airport => 0,
                :partner => 'picky',
                :limit => 20
                }
      get '/flights', params

      expect(last_response.status).to eq(400)
      expect(last_response.body).to include("Could not parse")
    end
  end
end
