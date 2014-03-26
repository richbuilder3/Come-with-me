class Trip < ActiveRecord::Base

	attr_accessible :origin, :destination, :length_of_stay, :traveler_id, :accomplished
  


  belongs_to :traveler
  has_many :comments

	# def create_comment!(trip, comment)
	#  	@comment = Comment.create(comment)
	#  	self.comments << @comment
	# end

end
