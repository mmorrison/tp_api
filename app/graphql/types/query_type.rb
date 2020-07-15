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

    #/routes

    field :routes, [RouteType], null: false, description: "Returns all Routes"
    def routes
      Route.all
    end

    #/routes/:id

    field :route, Types::RouteType, null: false do
      argument :id, ID, required: true
    end

    def route(id:)
      Route.find(id)
    end


  end
end
