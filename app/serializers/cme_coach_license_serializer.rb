class CmeCoachLicenseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :url, :source_url, :description, :at_glance

  attribute :license_requirements do |obj|
    LicenseRequirementSerializer.new(obj.license_requirements).as_json['data']
  end
  # has_many :license_requirements
end
