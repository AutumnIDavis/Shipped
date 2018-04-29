class AddCostToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :cost, :integer, numericality: true
    validates :jobs, cost:, numericality: {greater_than: 1000 }
  end
end
