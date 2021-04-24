class CreateRoomTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :room_types do |t|
      t.string :name
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
