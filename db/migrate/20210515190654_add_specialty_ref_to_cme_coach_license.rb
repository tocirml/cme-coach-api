class AddSpecialtyRefToCmeCoachLicense < ActiveRecord::Migration[6.1]
  def change
    add_reference :cme_coach_licenses, :specialty, null: false, foreign_key: true
  end
end
