# This migration comes from feature_review (originally 20250312171610)
class CreateFeatureReviewReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :feature_review_reviews do |t|
      t.string :title
      t.text :body
      t.bigint :user_id, null: false, index: true
      t.timestamps
    end
  end
end
