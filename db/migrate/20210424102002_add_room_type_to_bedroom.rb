class AddRoomTypeToBedroom < ActiveRecord::Migration[6.1]
  def change
    add_column :bedrooms, :room_type_id, :integer
    add_index :bedrooms, :room_type_id
  end
end
