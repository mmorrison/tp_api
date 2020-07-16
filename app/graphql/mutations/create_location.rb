class Mutations::CreateLocation < Mutations::BaseMutation
  argument :slug, String, required: true
  argument :gps, String, required: true

  field :location, Types::LocationType, null: false
  field :errors, [String], null: false

  def resolve(slug:, gps:)
    location = Location.new(slug: slug, gps: gps)
        if location.save
      {
        location: location,
        errors: []
      }
    else
      {
        location: nil,
        errors: location.errors.full_messages
      }
    end
  end
end