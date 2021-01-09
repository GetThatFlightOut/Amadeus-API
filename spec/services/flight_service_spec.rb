require 'spec_helper'
require 'json'
require 'rspec'

describe '.class methods' do
  describe 'flights_search method' do
    it "The default parameters adapt the return as intended" do
      params = {
        :fly_from => 'DEN',
        :date_from => '30/01/2021',
        :date_to => '30/01/2021',
        :nights_in_dst_from => 5,
        :nights_in_dst_to => 5,
        :limit => 20
        }

      response = FlightService.flights_search(params)
      json = JSON.parse(response.body, symbolize_names: true)

      json[:data].each do |trip|
        # tests max_stopovers param
        expect(trip[:route].length).to eq(2)
        # tests ret_from_diff_airport param
        expect(trip[:routes][0][1]).to eq(trip[:routes][1][0])
        # tests flight_type param
        expect(trip[:routes][1][0]).to eq(trip[:routes][0][1])
        # tests curr param
        expect(trip[:price]).to eq(trip[:conversion][:USD])
        # tests partner param
        expect(trip[:deep_link]).to be_a(String)
      end

      # these test sort param
      expect(json[:data][0][:price]).to be <= json[:data][1][:price]
      expect(json[:data][1][:price]).to be <= json[:data][2][:price]
      expect(json[:data][2][:price]).to be <= json[:data][3][:price]

      # this block tests one_for_city param
      destination_cities = json[:data].map do |trip|
        trip[:cityTo]
      end
      expect(destination_cities).to eq(destination_cities.uniq)
    end
  end
end
