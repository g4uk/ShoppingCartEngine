# frozen_string_literal: true

module ShoppingCart
  module OrderItemValidations
    extend ActiveSupport::Concern

    included do
      validates :product_price, :product_name, :total, presence: true
      validates :product_price, :total, numericality: { greater_than_or_equal_to: 0.01 }
      validates :quantity, numericality: { greater_than_or_equal_to: 1 }
    end
  end
end
