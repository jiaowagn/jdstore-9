class CreateProductLists < ActiveRecord::Migration[5.0]
  def change
    create_table :product_lists do |t|
      t.integer :order_id
      t.integer :quantity
      t.string :product_name
      t.string :product_price

      t.timestamps
    end
  end
end
