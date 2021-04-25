class CreateBedrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :bedrooms do |t|
      t.integer :status
      t.integer :quantity
      t.timestamps
    end
  end
end
