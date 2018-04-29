class AddAvatarColumnsToBoats < ActiveRecord::Migration[5.2]
  def change
   def self.up
      add_column :boats, :avatar_file_name, :string
      add_column :boats, :avatar_content_type, :string
      add_column :boats, :avatar_file_size, :integer
      add_column :boats, :avatar_updated_at, :datetime
    end
  end
end
