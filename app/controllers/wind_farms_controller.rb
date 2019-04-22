require 'open-uri'
require 'csv'

class WindFarmsController < ApplicationController
  def index
    farm_csv_text = open("app/assets/wind-farm-data.csv")
    @farm_csv = CSV.parse(farm_csv_text, :headers=>true)

    avg_capacity_csv_text = open("app/assets/avg-net-capacity-by-state-2012.csv")
    @avg_capacity_csv = CSV.parse(avg_capacity_csv_text, :headers=>true)
  end
end
