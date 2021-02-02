class EquipmentOffersController < ApplicationController
  def training
    @station = Station.find(params[:station_id])
    @equipment_offers = policy_scope(EquipmentOffer).where(station_id: @station).order(created_at: :desc)
    # for rented by you button check if equipment_offer.rentals.last.user == current_user
    @current_user = current_user
    # Rent in mins --> renttime = (rental1.end_at - rental1.begin_at)/60
    @myrentals = Rental.where(user_id: current_user).where(end_at: nil)
  end
end
