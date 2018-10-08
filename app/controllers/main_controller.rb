require_relative "../services/weather_service"

class MainController < ApplicationController

  def index
    # Uncomment and pass a parameter to the get function
    @w = WeatherService.get(params[:city])
    if $cities.key?(:city)
    	city = City.new name: params[:city], landmark: params[:landmark], population: params[:population]
    	city.save
    else
    	redirect_to '/cities/new'
    end
    # @name = params[:name] we don't need this anymore since we use the form

  end

end
