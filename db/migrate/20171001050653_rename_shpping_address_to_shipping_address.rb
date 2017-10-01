class RenameShppingAddressToShippingAddress < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :shpping_address, :shipping_address
  end
end
