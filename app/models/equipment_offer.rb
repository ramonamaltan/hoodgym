class EquipmentOffer < ApplicationRecord
  belongs_to :station
  has_many :rentals, dependent: :destroy
  has_many :users, through: :rentals

  validates :name, presence: true
  validates :availability, :presence, :locked, inclusion: [true, false]
end
