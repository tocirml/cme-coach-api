class CmeRecommendation < ApplicationRecord
  belongs_to :specialty

  has_many :cme_recommendation_items
end
