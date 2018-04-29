class AddAvatarToBoats < ActiveRecord::Migration[5.2]
  def change
add_column :boats, :avatar, :string
  end
end
