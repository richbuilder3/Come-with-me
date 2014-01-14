class Comment < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :trip
  belongs_to :traveler
end
