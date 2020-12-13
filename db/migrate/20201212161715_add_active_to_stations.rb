class AddActiveToStations < ActiveRecord::Migration[6.0]
  def change
    add_column :stations, :active, :boolean
  end
end
