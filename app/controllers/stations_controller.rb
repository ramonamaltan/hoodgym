class StationsController < ApplicationController
  def index
    @stations = policy_scope(Station).order(created_at: :desc)
  end
end
