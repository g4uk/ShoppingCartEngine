module ShoppingCart
  class CreditCard < ApplicationRecord
    include ShoppingCart::CreditCardValidations

    belongs_to :order

    attr_accessor :owner_name, :expiration_date, :cvv
  end
end
