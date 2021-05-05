# frozen_string_literal: true

require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'action_controller/railtie'

Bundler.require(*Rails.groups)

module FlashParsing
  # Application Setup
  class Application < Rails::Application
    config.load_defaults 6.1

    config.api_only = true
  end
end
