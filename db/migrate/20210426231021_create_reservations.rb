class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bedroom, null: false, foreign_key: true
      t.date :check_in
      t.date :check_out
      t.integer :adults
      t.integer :children

      t.timestamps
    end
  end
end
