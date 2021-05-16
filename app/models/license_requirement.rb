class LicenseRequirement < ApplicationRecord
  belongs_to :cme_coach_license
  has_many :requirement_items, dependent: :destroy
end
