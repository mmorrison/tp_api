module Mutations
  class UpdateLocation < BaseMutation
    graphql_name 'UpdateLocation'

    field :location, Types::LocationType, null: true

    argument :id, ID, required: true
    argument :slug, String, required: false
    argument :gps, String, required: false

    def resolve(**args)
      location = Location.find(args[:id])
      location.update(slug: args[:slug], gps: args[:gps])
      {
        location: location
      }
    end
  end
end
