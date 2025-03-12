# This migration comes from feature_user (originally 20250310165111)
class CreateFeatureUserUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :feature_user_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
