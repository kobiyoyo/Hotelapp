class CreateBedrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :bedrooms do |t|
      t.integer :status
      t.integer :quantity
      t.references :room/type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
