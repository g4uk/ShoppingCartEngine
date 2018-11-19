FactoryBot.define do
  factory :coupon, class: 'ShoppingCart::Coupon' do
    code { FFaker::String.from_regexp(ShoppingCart::CouponValidations::COUPON) }
    discount { rand(1..10) }
  end
end
