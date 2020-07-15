class CreateMapAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :map_assignments do |t|
      t.integer :route_id
      t.integer :location_id
      t.timestamps
    end
  end
end
