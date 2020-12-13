class AddItemIdToEquipmentOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment_offers, :item_id, :integer
  end
end
