class Trip < ActiveRecord::Base

	attr_accessible :origin, :destination, :length_of_stay, :traveler_id, :accomplished
  # attr_accessible :title, :body


  belongs_to :traveler
  has_many :comments


end
