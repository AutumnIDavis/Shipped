class AddOriginIdToJobs < ActiveRecord::Migration[5.2]
  def change
  add_column :jobs, :origin_id, :integer
  end
end
