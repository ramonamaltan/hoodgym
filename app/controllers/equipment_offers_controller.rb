class EquipmentOffersController < ApplicationController
  def index
    @station = Station.find(params[:station_id])
    all_offers = policy_scope(EquipmentOffer).order(created_at: :desc)
    @equipment_offers = all_offers.where(station_id: @station)
    # for rented by you button check if equipment_offer.rentals.last.user == current_user
    @current_user = current_user

    # Rent in mins --> renttime = (rental1.end_at - rental1.begin_at)/60

    
  end
end
