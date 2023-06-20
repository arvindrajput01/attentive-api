class ApplicationController < ActionController::API
	include  JsonWebToken
	
	# def authenticate_token
	# 	header = request.headers['Authorization']
	# 	token = header.split(' ').last if header

	# 	begin
	# 	  decoded = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
	# 	  @current_user = User.find(decoded['user_id'])
	# 	rescue JWT::DecodeError
	# 	  render json: { error: 'Invalid token' }, status: :unauthorized
	# 	end
	# end

	# def current_user
	# 	@current_user
	# end
end
