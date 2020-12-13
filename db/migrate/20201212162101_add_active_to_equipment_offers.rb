class AddActiveToEquipmentOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment_offers, :active, :boolean
  end
end
