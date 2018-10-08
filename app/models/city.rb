class City
	attr_accessor :name, :landmark, :population, :weather
	$cities = {}
	
	def initialize(city_params)
		@name = city_params[:name]
		@landmark = city_params[:landmark]
		@population = city_params[:population]
		@weather = WeatherService.get(@name)
	end

	def save
		$cities[@name.to_sym] = self
	end

	def self.all
    	$cities
  	end

	def update(update_params)
		# Your code here, for Task 4
		# Use update_params (a hash) to update the model
		if not update_params.key?(:landmark) && update_params.key?(:population)
			if not update_params[:population] == @population
				@population = update_params[:population]
				$cities[@name.to_sym][population] = @population
			end
		end
		if update_params.key?(:landmark) && not update_params.key?(:population)
			if not update_params[:landmark] == @landmark
				@landmark = update_params[:landmark]
				$cities[@name.to_sym][landmark] = @landmark
			end
		end
		if not update_params.key?(:landmark) && not update_params.key?(:population)
		else
				if not update_params[:population] == @population && not update_params[:landmark] == @landmark
					@population = update_params[:population]
					@landmark = update_params[:landmark]
					$cities[@name.to_sym][landmark] = @landmark
					$cities[@name.to_sym][population] = @population
				end
				if not update_params[:population] == @population && update_params[:landmark] == @landmark
					@population = update_params[:population]
					$cities[@name.to_sym][population] = @population
				else
					@landmark = update_params[:landmark]
					$cities[@name.to_sym][landmark] = @landmark
				end

		end

		

	end
end