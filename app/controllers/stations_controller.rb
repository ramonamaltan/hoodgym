class StationsController < ApplicationController
  def index
    @stations = policy_scope(Station).order(created_at: :desc)

    @markers = @stations.geocoded.map do |station|
      {
        lat: station.latitude,
        lng: station.longitude
      }
    end
  end

  def show
    @station = Station.find(params[:id])
    authorize @station
    @stations = Station.all
    @markers = @stations.geocoded.map do |station|
      {
        lat: station.latitude,
        lng: station.longitude
      }
    end
  end
end