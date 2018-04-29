class AddDestinationIdToJobs < ActiveRecord::Migration[5.2]
  def change
  add_column :jobs, :destination_id, :integer
  end
end
