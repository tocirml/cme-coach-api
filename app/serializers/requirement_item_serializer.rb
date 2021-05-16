class RequirementItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description

  # belongs_to :license_requirement
end
