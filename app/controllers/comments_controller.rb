class CommentsController < ApplicationController


	# def index
	# 	@trip = trip.find(params[:trip_id])
	# 	@comments = Comment.all
	# end

	# def new
	# 	@trip = trip.find(params[:trip_id])
	# 	@comment = Comment.new
	# end

	def create
		# @trip = Trip.find(params[:trip_id])
		# @traveler = Traveler.find(params[:traveler_id])
		# @comment = @trip.create_comment!(@trip, @comment_params)
		# @comment.save

		# redirect_to @trip
			# @trip = Trip.find(params[:trip_id])
			# @comment = @trip.comments.build({
			# description_text: params[:description_text],
			# trip_id: params[:trip_id],
			# traveler_id: current_traveler.id})
			# @comment.save!
			# redirect_to @trip

		@trip = Trip.find(params[:trip_id])
		Comment.create!({
			description_text: params[:description_text],
			trip_id: params[:trip_id],
			traveler_id: current_traveler.id})
		redirect_to @trip
	
	end
	# def show
	# 	@trip = trip.find(params[:trip_id])
	# 	@comment=Comment.find(params[:id])
	# end
end