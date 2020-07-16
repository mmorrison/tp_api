class MapAssignment < ApplicationRecord
  has_many :locations
  has_many :routes
  belongs_to :location
  belongs_to :route
end
