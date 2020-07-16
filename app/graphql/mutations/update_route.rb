module Mutations
  class UpdateRoute < BaseMutation
    graphql_name 'UpdateRoute'

    field :route, Types::RouteType, null: true

    argument :id, ID, required: true
    argument :slug, String, required: false
    argument :gps, String, required: false

    def resolve(**args)
      route = Route.find(args[:id])
      route.update(slug: args[:slug], gps: args[:gps])
      {
        route: route
      }
    end
  end
end
