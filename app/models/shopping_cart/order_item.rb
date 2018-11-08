module ShoppingCart
  class OrderItem < ApplicationRecord
    include ShoppingCart::OrderItemValidations

    belongs_to :itemable, polymorphic: true
    belongs_to :product, class_name: ShoppingCart.product_class.to_s, optional: true
  end
end
