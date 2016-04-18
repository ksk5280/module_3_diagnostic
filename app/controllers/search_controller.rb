class SearchController < ApplicationController
  def index

    apikey = ENV['NREL_KEY']
    connection = Faraday.new(:url => "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{apikey}&location=80203&radius=6&fuel_type=ELEC,LPG&limit=10")


  end
end
