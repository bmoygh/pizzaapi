class PayloadSerializer < ActiveModel::Serializer
  attributes :id, :event_type, :event_data
end
