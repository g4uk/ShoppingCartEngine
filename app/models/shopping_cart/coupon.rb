module ShoppingCart
  class Coupon < ApplicationRecord
    include ShoppingCart::CouponValidations
  end
end
