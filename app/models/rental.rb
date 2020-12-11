class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :equipment_offer

  validates :begin_at, :end_at, presence: true
end
