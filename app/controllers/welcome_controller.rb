class WelcomeController < ApplicationController

	def index
		@travelers = traveler.all
	end


	
end