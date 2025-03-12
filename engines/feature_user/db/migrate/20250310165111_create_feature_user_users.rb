# frozen_string_literal: true

class CreateFeatureUserUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :feature_user_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
