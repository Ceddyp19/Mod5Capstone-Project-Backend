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
        @user_destination = UserDestination.create(destination_id: params[:destination_id], user_id: decoded_token[0]['user_id'])
        render json: @user_movie
    end

    def destroy
        @user_destination = UserDestination.find_by(user_id: decoded_token[0]['user_id'], destination_id: params[:id])
        @user_destination.destroy
    end

end