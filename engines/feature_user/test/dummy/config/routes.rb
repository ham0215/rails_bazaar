# frozen_string_literal: true

Rails.application.routes.draw do
  mount FeatureUser::Engine => "/feature_user"
end
