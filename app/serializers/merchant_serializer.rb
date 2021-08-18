class MerchantSerializer < ActiveModel::Serializer
  attributes :name, :provider_id, :integration_id, :allows_order_scheduling, :active, :terminated
  has_one :client
end
