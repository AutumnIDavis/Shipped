class AddCostToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :cost, :integer, numericality: true
  end
end
