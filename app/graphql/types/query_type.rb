module Types
  class QueryType < Types::BaseObject
    # /locations
    field :locations, [LocationType], null: false, description: "Returns a list of all locations"
    def locations
      Location.all
    end

    #/location/:id

    field :location, Types::LocationType, null: false do
      argument :id, ID, required: true
    end

    def location(id:)
      Location.find(id)
    end
  end
end
