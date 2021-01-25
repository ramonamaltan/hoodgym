class EquipmentOffersController < ApplicationController
  def training
    @station = Station.find(params[:station_id])
    all_offers = policy_scope(EquipmentOffer).order(created_at: :desc)
    @equipment_offers = all_offers.where(station_id: @station)
    # for rented by you button check if equipment_offer.rentals.last.user == current_user
    @current_user = current_user
    # Rent in mins --> renttime = (rental1.end_at - rental1.begin_at)/60
    @myrentals = Rental.where(user_id: current_user).where(end_at: nil)

    # Create a rental
    # Rental.new
    # begin_at: DateTime.now().utc
    # user_id = current_user
    # equipment_id = Pick up dumbbell to start rent 

    # Finish rental on return --> set DateTime.now().utc
  end
end
