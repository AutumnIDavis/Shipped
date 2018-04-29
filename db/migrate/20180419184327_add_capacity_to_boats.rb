class AddCapacityToBoats < ActiveRecord::Migration[5.2]
  def change
    add_column :boats, :capacity, :integer
  end
end
