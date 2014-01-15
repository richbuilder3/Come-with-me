class WelcomeController < ApplicationController

	def index
		@travelers = Traveler.all
	end
end