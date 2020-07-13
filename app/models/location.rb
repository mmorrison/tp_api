class Location < ApplicationRecord
  validates_presence_of :slug, :gps
  belongs_to :route
end
