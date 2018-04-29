class AddUserIdToBoats < ActiveRecord::Migration[5.2]
  def change
    add_column :boats, :user_id, :integer
  end
end
