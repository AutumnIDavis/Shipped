class AddLocationToBoats < ActiveRecord::Migration[5.2]
  def change
    add_column :boats, :location, :string
  end
end
