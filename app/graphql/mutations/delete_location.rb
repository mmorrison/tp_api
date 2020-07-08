module Mutations
  class DeleteLocation < BaseMutation
    graphql_name 'DeleteLocation'

    field :location, Types::LocationType, null: true

    argument :id, ID, required: true

    def resolve(**args)
      location = Location.find(args[:id])
      location.destroy
      {
        location: location,
      }
    end
  end
end
