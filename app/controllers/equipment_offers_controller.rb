class EquipmentOffersController < ApplicationController
  def index
    @station = Station.find(params[:station_id])
    all_offers = policy_scope(EquipmentOffer).order(created_at: :desc)
    @equipment_offers = all_offers.where(station_id: @station)
    
    # Rent in mins --> renttime = (rental1.end_at - rental1.begin_at)/60
    # To check if in use look for last rental --> rentals = @equipment_offer.rentals.last.end_at
    # current rent --> Rental.where('begin_at < DateTime.now(), end_at > DateTime.now()')
    # but above gives back an object only maybe use @equipment_offer.rentals.last and if begin_at < DateTime.now(), end_at > DateTime.now()
  end
end
