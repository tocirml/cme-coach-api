class CmeRecommendationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :url

  attribute :cme_recommendation_items do |obj|
    CmeRecommendationItemSerializer.new(obj.cme_recommendation_items).as_json['data']
  end

  # has_many :cme_recommendation_items
end
