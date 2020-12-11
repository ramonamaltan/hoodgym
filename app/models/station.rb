class Station < ApplicationRecord
  has_many :equipment_offers, dependent: :destroy

  validates :name, :location, presence: true
  validates :location, uniqueness: true
end
