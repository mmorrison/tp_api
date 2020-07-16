class CreateRouteLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :route_locations do |t|
      t.bigint :route_id
      t.bigint :location_id
      t.timestamps
    end
  end
end
