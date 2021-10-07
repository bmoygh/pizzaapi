class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :merchant
end
