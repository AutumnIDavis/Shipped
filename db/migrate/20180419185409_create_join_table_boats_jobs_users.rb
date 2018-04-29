class CreateJoinTableBoatsJobsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :boats_jobs_users, :id => false do |t|
      t.integer :boat_id
      t.integer :user_id
      t.integer :job_id
  end
end
end 
