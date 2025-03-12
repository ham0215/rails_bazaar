# This migration comes from feature_team (originally 20250312172352)
class CreateFeatureTeamTeamUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :feature_team_team_users do |t|
      t.references :team, null: false, index: true
      t.bigint :user_id, null: false, index: true

      t.timestamps
    end
  end
end
