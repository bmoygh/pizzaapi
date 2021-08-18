class AddFieldsToMerchants < ActiveRecord::Migration[6.1]
  def change
    add_column :merchants, :provider_id, :string
    add_column :merchants, :integration_id, :string
    add_column :merchants, :allows_order_scheduling, :string
    add_column :merchants, :active, :boolean
    add_column :merchants, :terminated, :boolean
  end
end
