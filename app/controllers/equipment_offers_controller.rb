class EquipmentOffersController < ApplicationController
  def index
    @station = Station.find(params[:station_id])
    all_offers = policy_scope(EquipmentOffer).order(created_at: :desc)
    @equipment_offers = all_offers.where(station_id: @station)
  end
end
