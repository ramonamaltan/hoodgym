class StationsController < ApplicationController
  def index
    @stations = policy_scope(Station).order(created_at: :desc)

    @markers = @stations.geocoded.map do |station|
      {
        lat: station.latitude,
        lng: station.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { station: station })
      }
    end
  end
end
