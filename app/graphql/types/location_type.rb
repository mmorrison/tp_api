module Types
  class LocationType < Types::BaseObject
    field :id, ID, null: true
    field :slug, String, null: true
    field :gps, String, null: true
  end
end
