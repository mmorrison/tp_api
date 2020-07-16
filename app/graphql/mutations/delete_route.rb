module Mutations
  class DeleteRoute < BaseMutation
    graphql_name 'DeleteRoute'

    field :route, Types::RouteType, null: true

    argument :id, ID, required: true

    def resolve(**args)
      route = Route.find(args[:id])
      route.destroy
      {
        route: route,
      }
    end
  end
end
