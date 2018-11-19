class CreateShoppingCartAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_cart_addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :country
      t.string :city
      t.string :zip
      t.string :phone
      t.string :type
      t.integer :order_id, index: true

      t.timestamps
    end
  end
end
