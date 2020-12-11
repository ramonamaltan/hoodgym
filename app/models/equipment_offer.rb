class EquipmentOffer < ApplicationRecord
  belongs_to :station
  has_many :rentals
  has_many :users, through: :rentals

  validates :name, :availability, :presence, :locked, presence: true
end
