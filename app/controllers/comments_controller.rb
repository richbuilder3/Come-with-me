class CommentsController < ApplicationController


def create
	Comment.create!({
	traveler_id: current_traveler.id
	trip_id: params[:trip_id]


		})
end


end