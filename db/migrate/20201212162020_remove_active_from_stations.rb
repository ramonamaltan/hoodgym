class RemoveActiveFromStations < ActiveRecord::Migration[6.0]
  def change
    remove_column :stations, :active, :boolean
  end
end
