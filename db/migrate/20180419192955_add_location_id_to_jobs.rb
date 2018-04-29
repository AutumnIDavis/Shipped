class AddLocationIdToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :location_id, :integer
  end
end
