require File.expand_path('../boot', __FILE__)

require 'rails/all'


# Require Single File for Services Folder
#  require './app/services/chapter2/Gear.rb'
#  require './lib/Logic.rb'

#Required all the File Once of the Folder
# Dir["./app/services/chapter2/*.rb"].each {|file| require file }
Dir["./app/services/**/*.rb"].sort.each {|file| require file } #incldue all the Folders and Sub folders as well
Dir["./lib/*.rb"].sort.each {|file| require file }

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BicycleTour
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de


    # load "#{Rails.root}/lib/Logic.rb" # Load At the Time Loading Application
    # load "#{Rails.root}/app/services/chapter2/Gear.rb"

    # config.active_record.raise_in_transactional_callbacks = true
    # Do not swallow errors in after_commit/after_rollback callbacks.
  end
end
