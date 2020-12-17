class StationsController < ApplicationController
  def index
    @stations = policy_scope(Station).order(created_at: :desc)

    @markers = @stations.geocoded.map do |station|
      {
        lat: station.latitude,
        lng: station.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { station: station }),
        image_url: helpers.asset_url('training-emoji2.jpg')
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