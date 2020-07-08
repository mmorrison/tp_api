module Types
  class QueryType < Types::BaseObject
    field :location, LocationType, null: false do
      description "Find a location by ID"
      argument :id, ID, required: true
    end
    def location(id:)
      Location.find(id)
    end


    field :locations, [LocationType], null: true
    def locations
      Location.all
    end
  end
end
