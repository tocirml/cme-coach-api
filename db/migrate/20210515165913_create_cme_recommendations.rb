class CreateCmeRecommendations < ActiveRecord::Migration[6.1]
  def change
    create_table :cme_recommendations do |t|
      t.references :specialty, null: false, foreign_key: true
      t.string :url
      t.string :name

      t.timestamps
    end
  end
end
