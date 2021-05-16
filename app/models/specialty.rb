class Specialty < ApplicationRecord
  has_many :cme_recommendations, dependent: :destroy
  has_many :cme_coach_licenses, dependent: :destroy

  def licenses_by_state(state)
    cme_coach_licenses.select do |license|
      license.state.eql?(state) || license.state.eql?('Global')
    end
  end
end
