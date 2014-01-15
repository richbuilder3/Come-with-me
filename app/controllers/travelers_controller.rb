class TravelersController < ApplicationController


def index
	@travelers = Traveler.all
end
def new
end

def create
	binding.pry
	Traveler.create!({
		name: params[:name], 
		email: params[:email], 
		password: params[:password]
	})
	redirect_to '/travelers'
end


end