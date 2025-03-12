module FeatureTeam
  class Engine < ::Rails::Engine
    isolate_namespace FeatureTeam
    config.generators.api_only = true
  end
end
