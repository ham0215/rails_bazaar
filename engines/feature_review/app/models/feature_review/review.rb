module FeatureReview
  class Review < ApplicationRecord
    belongs_to :user, class_name: "FeatureUser::User"
  end
end
