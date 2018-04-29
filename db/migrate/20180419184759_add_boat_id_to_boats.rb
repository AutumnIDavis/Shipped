class AddBoatIdToBoats < ActiveRecord::Migration[5.2]
  def change
    add_column :boats, :boat_id, :integer
  end
end
