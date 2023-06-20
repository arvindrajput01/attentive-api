require 'jwt'

module JsonWebToken
	extend ActiveSupport::Concern

	SECRET_KEY = Rails.application.secret_key_base
	ACCESS_TOKEN_EXPIRY_TIME = 15.minutes
	REFRESH_TOKEN_EXPIRY_TIME = 7.days

	def self.encode(payload, expiration)
		payload[:exp] = expiration.to_i
		JWT.encode(payload, SECRET_KEY)
	end

	def self.decode(token)
		JWT.decode(token, SECRET_KEY)[0]
	end

	def self.generate_access_token(user)
		payload = { user_id: user.id }
		encode(payload, Time.now + ACCESS_TOKEN_EXPIRY_TIME)
	end

	def self.generate_refresh_token(user)
		payload = { user_id: user.id }
		encode(payload, Time.now + REFRESH_TOKEN_EXPIRY_TIME)
	end

	def self.expired?(token)
		decoded = decode(token)
		Time.at(decoded['exp']) < Time.now
	end
end