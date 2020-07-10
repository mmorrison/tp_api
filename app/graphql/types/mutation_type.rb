module Types
  class MutationType < Types::BaseObject
    field :delete_location, mutation: Mutations::DeleteLocation
    field :update_location, mutation: Mutations::UpdateLocation

    field :create_location, mutation: Mutations::CreateLocation
    field(:create_location, {mutation: Mutations::CreateLocation})
  end
end
