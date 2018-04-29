class AddDestinationToBoats < ActiveRecord::Migration[5.2]
  def change
    add_column :boats, :destination, :string
  end
end
