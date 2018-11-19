module ShoppingCart
  class Delivery < ApplicationRecord
    include ShoppingCart::DeliveryValidations

    has_many :orders
  end
end
