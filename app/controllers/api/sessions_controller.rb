# frozen_string_literal: true

module Api
  class SessionsController < ApplicationController
    before_action :authenticate_token, except: [:create]
    def create
      user = User.find_by(email: session_params[:email])

      if user&.authenticate(session_params[:password])
        access_token = JsonWebToken.generate_access_token(user)
        refresh_token = JsonWebToken.generate_refresh_token(user)
        render json: { accessToken: access_token, refreshToken: refresh_token }
      else
        render json: { error: 'Invalid email or password' }, status: :unauthorized
      end
    end

    private

    def session_params
      params.require(:session).permit(:email, :password)
    end
  end
end
