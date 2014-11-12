class WeathersController < ApplicationController

	def index

		@chicago = Weather.lookup(2379574, Weather::Units::FARENHEIT)

		@celsius = (((@chicago.condition.temp).to_f - (32.0)) * (5.0/9.0)).round(2)

		
	end

end
