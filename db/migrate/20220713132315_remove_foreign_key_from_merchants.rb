class RemoveForeignKeyFromMerchants < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :locations, :merchants
    remove_foreign_key :merchants, :clients
  end
end
