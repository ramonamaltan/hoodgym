class EquipmentOffersController < ApplicationController
  def index
    @equipment_offers = policy_scope(EquipmentOffer).order(created_at: :desc)
  end
end
