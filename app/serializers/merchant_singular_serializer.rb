class MerchantSingularSerializer < ActiveModel::Serializer
  attributes :updated_at
  has_many :locations
end
