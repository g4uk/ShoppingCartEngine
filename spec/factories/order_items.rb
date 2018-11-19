FactoryBot.define do
  factory :order_item, class: 'ShoppingCart::OrderItem' do
    product
    quantity { rand(1..10) }
    product_name { FFaker::Lorem.sentence }
    product_price { rand(10.1..100).round(2) }
    total { quantity * product_price }
  end
end
