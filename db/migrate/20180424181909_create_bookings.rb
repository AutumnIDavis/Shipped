class CreateBookings < ActiveRecord::Migration[5.2]

  def change
    create_table :bookings do |t|
      t.integer :boat_id
      t.integer :job_id

      t.timestamps
    end
      add_index :bookings, :boat_id
      add_index :bookings, :job_id
      add_index :bookings, [:boat_id, :job_id], unique: true
  end
end
