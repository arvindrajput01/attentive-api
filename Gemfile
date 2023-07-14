# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

gem 'actionpack', '~> 7.0.5.1'
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', require: false
gem 'brakeman'
gem 'bundler-audit'
gem 'debug', platforms: %i[mri mingw x64_mingw]
gem 'factory_bot_rails', '~> 6.0'
gem 'jwt'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma', '~> 5.0'
gem 'rack-cors'
gem 'rails', '~> 7.0.5', '>= 7.0.5.1'
gem 'rubocop'
gem 'rubocop-rails'
gem 'ruby_audit'
gem 'rspec-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw]

group :development, :test do
  gem 'brakeman'
  gem 'bundler-audit'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.0'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'ruby_audit'
end

group :development do
  # gem 'spring'
end
