class CollagesController < ApplicationController
  def index
    collages = Collage.all
    render json: collages
  end

  def show
    collage = Collage.find_by(id: params[:id])
    render json: collage
  end

  def create
    params.permit!
    collage = Collage.find_or_create_by(
      photos: params["photos"],
      story: params["story"],
      date: params["date"],
      user_destination_id: params["user_destination_id"],
    )
  end

  def update
    @collage = Collage.find(params[:id])

    @collage.update(story: params[:story])
  end

  
  def destroy
    @collage = Collage.find( params[:id])
    @collage.destroy
end

end
