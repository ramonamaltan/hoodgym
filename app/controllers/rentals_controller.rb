class RentalsController < ApplicationController
  def booking
    @bookings = policy_scope(Rental).includes(:equipment_offer).where(user_id: current_user)
  end
end
