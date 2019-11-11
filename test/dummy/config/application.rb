require_relative 'boot'

require "action_controller/railtie"
require "action_view/railtie"
require "action_mailer/railtie"
require "rails/test_unit/railtie"
require "sprockets/railtie"
require 'teaspoon-mocha'


# Workarea must be required before other gems to ensure control over Rails.env
# for running tests
require 'workarea/core'
require 'workarea/admin'
require 'workarea/storefront'
Bundler.require(*Rails.groups)
require "workarea/payflow_pro"

module Dummy
  class Application < Rails::Application
    config.load_defaults 5.1
  end
end
