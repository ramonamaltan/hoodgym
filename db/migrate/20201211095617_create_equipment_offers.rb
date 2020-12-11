class CreateEquipmentOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment_offers do |t|
      t.string :name
      t.boolean :availability, default: true
      t.boolean :presence, default: true
      t.boolean :locked, default: true
      t.references :station, null: false, foreign_key: true

      t.timestamps
    end
  end
end
