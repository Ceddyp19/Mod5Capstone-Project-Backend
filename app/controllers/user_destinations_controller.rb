class UserDestinationsController < ApplicationController

    def index
        @user_destinations = UserDestination.all.select {|userdestination| userdestination.user_id === decoded_token[0]['user_id']}
        render json: @user_destinations
    end

    def show 
        @user_destination = UserDestination.find(params[:id])
        render json: @user_destination
    end

    def create 
        @destination = Destination.find_by(addr: params[:addr])
         id = @destination.id
      
        puts (@destination.id)
        @user_destination = UserDestination.create(destination_id: id, user_id: decoded_token[0]['user_id'])
        # @user_destination = UserDestination.create(destination_id: params[:destination_id], user_id: decoded_token[0]['user_id'])
        render json: @user_destination
    end

    def destroy
        @user_destination = UserDestination.find_by(user_id: decoded_token[0]['user_id'], destination_id: params[:id])
        @user_destination.destroy
    end

end