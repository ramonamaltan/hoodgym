class RentalsController < ApplicationController
  def booking
    @bookings = policy_scope(Rental).where(user_id: current_user)
  end
end
