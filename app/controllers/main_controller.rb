require_relative "../services/weather_service"

class MainController < ApplicationController

  def index
    # Uncomment and pass a parameter to the get function
    @w = WeatherService.get(params[:city])
    @name = params[:name]
   

    city = City.new(@w)

    city.save
  end

end
