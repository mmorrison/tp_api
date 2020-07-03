class Location < ApplicationRecord
  validates_presence_of :slug, :gps
end
