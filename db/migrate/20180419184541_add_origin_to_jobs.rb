class AddOriginToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :origin, :string
  end
end
