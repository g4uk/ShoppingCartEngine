# frozen_string_literal: true

module ShoppingCart
  module CreditCardValidations
    extend ActiveSupport::Concern

    CREDIT_CARD_NUMBER = /\A[0-9]+\Z/

    included do
      validates :number, presence: true
      validates :number, format: { with: CREDIT_CARD_NUMBER }
    end
  end
end
