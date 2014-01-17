class WelcomeController < ApplicationController

	def index
		@travelers = Traveler.all
		@trips = Trip.all
	end

	
end