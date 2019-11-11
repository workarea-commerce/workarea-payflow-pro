module Workarea
  module PayflowPro
    class Engine < ::Rails::Engine
      include Workarea::Plugin
      isolate_namespace Workarea::PayflowPro
    end
  end
end
