class AddJobIdToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :job_id, :integer
  end
end
