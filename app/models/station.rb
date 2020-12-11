class Station < ApplicationRecord
  has_many :equipment_offers, dependent: :destroy
end
