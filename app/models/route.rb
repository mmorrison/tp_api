class Route < ApplicationRecord
  validates_presence_of :name, :description
  has_many :route_locations
  has_many :locations, through: :route_locations
end
