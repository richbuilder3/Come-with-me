class CommentsController < ApplicationController


def index
	@trip = trip.find(params[:trip_id])
	@comments = Comment.all
end

def new
	@trip = trip.find(params[:trip_id])
	@comment = Comment.new
end

def create
	@trip = trip.find(params[:trip_id])
	Comment.create!({
	description_text: params[:description_text],
	trip_id: params[:trip_id],
	traveler_id: current_traveler.id
})
	redirect_to 'traveler_comments'
end

def show
@trip = trip.find(params[:trip_id])
@comment=Comment.find(params[:id])
end
end