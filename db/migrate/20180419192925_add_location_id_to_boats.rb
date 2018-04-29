class AddLocationIdToBoats < ActiveRecord::Migration[5.2]
  def change
    add_column :boats, :location_id, :integer
  end
end
