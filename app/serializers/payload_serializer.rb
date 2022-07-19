class PayloadSerializer < ActiveModel::Serializer
  attributes :id, :webhook_type, :event_type, :event_data
end
