class AddEventToPayloads < ActiveRecord::Migration[6.1]
  def change
    change_table :payloads do |t|
      t.integer "webhook_type"
      t.string "event_type"
      t.string "resource_type"
      t.jsonb "event_data", default: {}
      t.boolean "processed", default: false
    end
  end
end
