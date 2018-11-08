# frozen_string_literal: true
module ShoppingCart
  module CouponValidations
    extend ActiveSupport::Concern

    COUPON = /\A[A-Z0-9]{1,10}\Z/

    included do
      validates :code, presence: true
      validates :code, format: { with: COUPON }
      validates :code, length: { maximum: 10 }
      validates :discount, numericality: true
    end
  end
end
