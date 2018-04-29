class AddCapacityToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :capacity, :integer
  end
end
