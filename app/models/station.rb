class Station < ApplicationRecord
  has_many :equipment_offers, dependent: :destroy

  validates :name, :location, presence: true
  validates :location, uniqueness: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def self.create_from_collection(stations)
    Station.destroy_all
    stations.each do |station_hash|
      Station.create(station_hash)
    end
  end
end
