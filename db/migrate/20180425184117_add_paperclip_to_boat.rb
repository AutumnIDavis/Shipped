class AddPaperclipToBoat < ActiveRecord::Migration[5.2]
  def change
add_attachment :boats, :image
  end
end
