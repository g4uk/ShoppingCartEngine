class CreateShoppingCartCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_cart_carts do |t|
      t.string :coupon_code
      t.decimal :coupon_price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
