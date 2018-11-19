class CreateShoppingCartCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_cart_credit_cards do |t|
      t.string :number
      t.integer :order_id, index: true

      t.timestamps
    end
  end
end
