class CreateShoppingCartOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_cart_order_items do |t|
      t.integer :product_id, index: true
      t.integer :quantity, null: false, default: 1
      t.string :product_name
      t.decimal :product_price, precision: 8, scale: 2
      t.decimal :total, precision: 8, scale: 2
      t.integer :itemable_id, :integer
      t.string :itemable_type, :string

      t.timestamps
    end
  end
end
