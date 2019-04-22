require 'open-uri'
require 'csv'

class WindFarmsController < ApplicationController
  def index
    csv_text = open("app/assets/wind-farm-data.csv")
    @csv = CSV.parse(csv_text, :headers=>true)
  end
end
