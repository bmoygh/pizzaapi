class CreatePayloads < ActiveRecord::Migration[6.1]
  def change
    create_table :payloads do |t|

      t.timestamps
    end
  end
end
