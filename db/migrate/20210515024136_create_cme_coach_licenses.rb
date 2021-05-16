class CreateCmeCoachLicenses < ActiveRecord::Migration[6.1]
  def change
    create_table :cme_coach_licenses do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :source_url
      t.string :at_glance

      t.timestamps
    end
  end
end
