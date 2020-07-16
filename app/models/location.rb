class Location < ApplicationRecord
  validates_presence_of :slug, :gps
  has_many :route_locations
  has_many :routes, through: :route_locations
end
