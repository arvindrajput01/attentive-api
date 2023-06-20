class Api::UsersController < ApplicationController
 
  before_action :authenticate_user
  def create
    user = User.new(user_params)

    if user.save
      render json: { message: 'User created successfully' }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

   def update
    user = User.find(params[:id])

    if user.update(user_params)
      render json: { message: 'User updated successfully' }
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password,:name,:first_name,:last_name)
  end

  def authenticate_user
    access_token = request.headers['Authorization']
    if access_token.present? && !expired?(access_token)
      decoded_token = decode(access_token)
      @current_user = User.find(decoded_token['user_id'])
    else
      render json: { error: 'Invalid token' }, status: :unauthorized
    end
  end
end
