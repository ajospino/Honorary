# Load the Rails application.
require_relative "application"
Dotenv::Railtie.load
# Initialize the Rails application.
Rails.application.configure do config.secret_key_base = ENV["SECRET_KEY_BASE"] end
Rails.application.initialize!
