class CmeCoachLicense < ApplicationRecord
  has_many :license_requirements, dependent: :destroy
  belongs_to :specialty
end
