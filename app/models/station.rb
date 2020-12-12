class Station < ApplicationRecord
  has_many :equipment_offers, dependent: :destroy

  validates :name, :location, presence: true
  validates :location, uniqueness: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_address?
end
