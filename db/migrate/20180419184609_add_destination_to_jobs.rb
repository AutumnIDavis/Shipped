class AddDestinationToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :destination, :string
  end
end
