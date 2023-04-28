# Load the Rails application.
require_relative "application"

config.secret_key_base = ENV["SECRET_KEY_BASE"] 
# Initialize the Rails application.
Rails.application.initialize!
