module FeatureTeam
  class TeamUser < ApplicationRecord
    belongs_to :user, class_name: "FeatureUser::User"
    belongs_to :team
  end
end
