require_relative "boot"

require "rails/all"

require 'erb'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Honorary
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    Rails.application.config.hosts << "honoraryprod.us-east-2.elasticbeanstalk.com"
    config.load_defaults 7.0
    ActiveRecord::Base.establish_connection( YAML.load( ERB.new( File.read( "#{app_dir}/config/database.yml" )).result)[rails_env])
    # Configuration for the application, engines, and railties goes here.
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
