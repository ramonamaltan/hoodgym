class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.references :user, null: false, foreign_key: true
      t.references :equipment_offer, null: false, foreign_key: true
      t.datetime :begin_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
