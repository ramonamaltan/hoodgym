class RentalsController < ApplicationController
  def booking
    @bookings = policy_scope(Rental).includes({ equipment_offer: [:station] }).where(user_id: current_user).where.not(end_at: nil)
  end
end
