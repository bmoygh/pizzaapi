class PayloadSerializer < ActiveModel::Serializer
  attributes :id, :webhook_type, :event_type, :resource_type, :event_data, :processed
end
