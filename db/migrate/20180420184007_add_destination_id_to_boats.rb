class AddDestinationIdToBoats < ActiveRecord::Migration[5.2]
  def change
  add_column :boats, :destination_id, :integer
  end
end
