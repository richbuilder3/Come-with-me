class Comment < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :trips
  belongs_to :travelers
end
