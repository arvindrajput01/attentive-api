class Api::SessionsController < ApplicationController
	 before_action :authenticate_token, except: [:create]
	 
	def create
		debugger
		user = User.find_by(email: session_params[:email])

		if user && user.authenticate(session_params[:password])
		  token = encode_token({ user_id: user.id })
		  render json: { token: token }
		else
		  render json: { error: 'Invalid email or password' }, status: :unauthorized
		end
	end

	private

	def encode_token(payload)
		JWT.encode(payload, Rails.application.secrets.secret_key_base)
	end

	def session_params
		params.require(:session).permit(:email,:password)
	end
end
