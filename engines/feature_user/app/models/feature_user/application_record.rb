# frozen_string_literal: true

module FeatureUser
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
