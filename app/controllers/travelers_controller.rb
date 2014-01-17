class TravelersController < ApplicationController


def index
	@travelers = Traveler.all
end

def new
	redirect_to '/travelers/sign_up'
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

def show
	@traveler=Trip.find(params[:id])
end


end