class UsersController < ApplicationController
  # include Secured

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user
  end

  def create
    # user = User.new(user_params)

    # if user.save
    #   render json: { status: "User created successfully" }, status: :created
    # else
    #   render json: { errors: user.errors.full_messages }, status: :bad_request
    # end

    user = User.find_or_create_by(
      uid: params["sub"],
      email: params["email"],
      first_name: params["given_name"],
      last_name: params["family_name"],
      image: params["picture"],
    )
  end

  # private

  # def user_params
  #   params.require(:user).permit(:email, :password, :password_confirmation)
  # end
end
