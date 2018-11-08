class CreateShoppingCartOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_cart_orders do |t|
      t.integer :user_id, index: true
      t.decimal :total, precision: 8, scale: 2
      t.string :delivery_type
      t.decimal :delivery_price, precision: 8, scale: 2
      t.string :delivery_duration
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
