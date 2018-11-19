module ShoppingCart
  class Address < ApplicationRecord
    include ShoppingCart::AddressValidations

    belongs_to :order
  end
end
