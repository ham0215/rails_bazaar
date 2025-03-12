class CreateFeatureTeamTeams < ActiveRecord::Migration[8.0]
  def change
    create_table :feature_team_teams do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end
