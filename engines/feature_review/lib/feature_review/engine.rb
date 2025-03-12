module FeatureReview
  class Engine < ::Rails::Engine
    isolate_namespace FeatureReview
    config.generators.api_only = true
  end
end
