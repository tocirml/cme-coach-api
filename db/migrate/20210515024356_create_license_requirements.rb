class CreateLicenseRequirements < ActiveRecord::Migration[6.1]
  def change
    create_table :license_requirements do |t|
      t.references :cme_coach_license, null: false, foreign_key: true
      t.string :years

      t.timestamps
    end
  end
end
