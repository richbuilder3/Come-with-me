class Comment < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :trips
  has_many :travelers
end
