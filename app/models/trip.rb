class Trip < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :traveler
  has_many :comments
end
