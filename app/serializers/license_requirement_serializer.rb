class LicenseRequirementSerializer
  include FastJsonapi::ObjectSerializer
  attributes :years
  
  attribute :requirement_items do |obj|
    RequirementItemSerializer.new(obj.requirement_items).as_json['data']
  end
  
    # has_many :requirement_items
    # belongs_to :cme_coach_license
end
