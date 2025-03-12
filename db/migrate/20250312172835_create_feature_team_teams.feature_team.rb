# This migration comes from feature_team (originally 20250312172249)
class CreateFeatureTeamTeams < ActiveRecord::Migration[8.0]
  def change
    create_table :feature_team_teams do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end
