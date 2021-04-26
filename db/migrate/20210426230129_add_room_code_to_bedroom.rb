class AddRoomCodeToBedroom < ActiveRecord::Migration[6.1]
  def change
    add_column :bedrooms, :room_code, :integer
  end
end
