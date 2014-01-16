class Comment < ActiveRecord::Base
  # attr_accessible :title, :body

aatr_accessible :traveler_id, :trip_id, :comment

  belongs_to :trip
  belongs_to :traveler
end
