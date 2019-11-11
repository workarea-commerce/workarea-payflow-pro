$:.push File.expand_path('../lib', __FILE__)

require 'workarea/payflow_pro/version'

Gem::Specification.new do |s|
  s.name        = 'workarea-payflow_pro'
  s.version     = Workarea::PayflowPro::VERSION
  s.authors     = ['Jeff Yucis']
  s.email       = ['jyucis@weblinc.com']
  s.homepage    = 'https://github.com/workarea-commerce/workarea-payflow-pro'
  s.summary     = 'PayflowPro Payment Gateway.'
  s.description = 'Payment Gateway for pay flow pro.'

  s.files = `git ls-files`.split("\n")

  s.add_dependency 'workarea', '~> 3.x'
end
