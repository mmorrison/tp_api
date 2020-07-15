module Mutations
  class CreateRoute < BaseMutation
    field :route, Types::RouteType, null: false

    argument :name, String, required: true
    argument :description, String, required: true

    def resolve(name:, description:)
      route = Route.create!(name: name, description: description)
          {
            route: route
          }
      end

  end
end
