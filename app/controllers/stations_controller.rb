class StationsController < ApplicationController
  def index
    if params[:query].present?
      @stations = policy_scope(Station).near("%#{params[:query]}%", 3)
    else
      @stations = policy_scope(Station).order(:name)
    end

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

    @marker = { lat: @station.latitude, lng: @station.longitude, image_url: helpers.asset_url('training-emoji2.jpg') }
  end

  def new
    @station = Station.new
    authorize @station
  end

  def create
    @station = Station.new(station_params)
    if @station.save
      redirect_to station_path(@station)
    else
      render :new
    end
  end

  private

  def station_params
    params.require(:station).permit(:name, :location, :photo)
  end
end
