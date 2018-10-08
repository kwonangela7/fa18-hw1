class CitiesController < ApplicationController
	def view
		if $cities.length == 0
			redirect_to '/cities/new'
		else
			render 'view' 
		end
	end

	def new
		# by default renders the form
	end

	def create
		if $cities.key?(:city)
			redirect_to '/cities/view'
		else 
			new_city = City.new name: params[:city], landmark: params[:landmark], population: params[:population]
			new_city.save
			redirect_to '/cities/view'
		end
		
	end

	def update
		render 'update'
		
	end

	def actualupdate
		if $cities.key?(:city)
			$cities[params[:city].to_sym].update(landmark: params[:landmark], population: params[:population])
			redirect_to '/cities/view'
		else
			puts "ERROR: You can't update the name of a city! You can only update the landmark or population of a city that has already been created"
			redirect_to '/cities/view'
		end
	end
end