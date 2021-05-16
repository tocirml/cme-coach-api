class CreateCmeRecommendationItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cme_recommendation_items do |t|
      t.references :cme_recommendation, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
