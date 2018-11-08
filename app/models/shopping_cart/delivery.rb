module ShoppingCart
  class Delivery < ApplicationRecord
    include ShoppingCart::DeliveryValidations
  end
end
