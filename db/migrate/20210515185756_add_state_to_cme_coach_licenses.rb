class AddStateToCmeCoachLicenses < ActiveRecord::Migration[6.1]
  def change
    add_column :cme_coach_licenses, :state, :string
  end
end
