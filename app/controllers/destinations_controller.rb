class DestinationsController < ApplicationController
  def index
    destinations = Destination.all
    render json: destinations
  end

  def show
    destination = Destination.find_by(id: params[:id])
    render json: destination
  end

  def create
    params.permit!
    # destination = Destination.create([params])
    destination = Destination.find_or_create_by(
      name: params["name"],
      lat: params["lat"],
      lng: params["lng"],
      image: params["image"],
      addr: params["addr"]
    )
  end
end

