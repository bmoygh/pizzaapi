class ClientSerializer < ActiveModel::Serializer
  attributes :updated_at
  has_many :merchants
end
