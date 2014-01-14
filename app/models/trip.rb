class Trip < ActiveRecord::Base
  # attr_accessible :title, :body

has_many :travelers, through: :comments
has_many :comments

end
