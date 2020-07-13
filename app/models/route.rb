class Route < ApplicationRecord
  validates_presence_of :name, :description
  has_many :locations
end
