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
    
    rails_env = ENV['RAILS_ENV'] || "development"

    app_dir = File.expand_path("../..", __FILE__)

    config.load_defaults 7.0

    require 'erb'
    ActiveRecord::Base.establish_connection( YAML.load( ERB.new( File.read( "#{app_dir}/config/database.yml" )).result)[rails_env])
    # Configuration for the application, engines, and railties goes here.
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
