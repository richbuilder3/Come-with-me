class Comment < ActiveRecord::Base
  # attr_accessible :title, :body

attr_accessible :traveler_id, :trip_id, :description_text

  belongs_to :trip
  belongs_to :traveler
end
