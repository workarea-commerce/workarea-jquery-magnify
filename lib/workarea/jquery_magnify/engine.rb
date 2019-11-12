module Workarea
  module JqueryMagnify
    class Engine < ::Rails::Engine
      include Workarea::Plugin
      isolate_namespace Workarea::JqueryMagnify
    end
  end
end
