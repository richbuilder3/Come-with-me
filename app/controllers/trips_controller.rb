class TripsController < ApplicationController
before_filter :authenticate_traveler!

	def index
		@trips = Trip.all
	end

	def show
		@trip = Trip.find(params[:id])
	end

	def new
		@trip = Trip.new
	end

	def create
		@trip = Trip.new(params[:trip])
		@trip.save
		if @trip.save
			redirect_to trip_path(@trip)
		else
			render 'new'
		end
	end

	def destroy
		Trip.delete(params[:id])
		redirect_to '/trips'
	end

end

