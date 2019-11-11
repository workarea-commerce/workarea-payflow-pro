require 'workarea/testing/teaspoon'

Teaspoon.configure do |config|
  config.root = Workarea::PayflowPro::Engine.root
  Workarea::Teaspoon.apply(config)
end
