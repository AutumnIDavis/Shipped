class AddOriginIdToBoats < ActiveRecord::Migration[5.2]
  def change
  add_column :boats, :origin_id, :integer
  end
end
